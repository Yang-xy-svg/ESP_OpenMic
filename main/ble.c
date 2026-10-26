/* OpenMic BLE standby service.
 * BLE is used only as a low power status/control channel. Recordings are
 * still transferred over WiFi HTTP. */

#include "ble.h"
#include "revk.h"

#include "esp_log.h"
#include "esp_netif.h"
#include "esp_timer.h"
#include "host/ble_hs.h"
#include "host/util/util.h"
#include "nimble/nimble_port.h"
#include "nimble/nimble_port_freertos.h"
#include "services/gap/ble_svc_gap.h"
#include "services/gatt/ble_svc_gatt.h"
#include "store/config/ble_store_config.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void ble_store_config_init (void);

#define OPENMIC_BLE_SVC_UUID      0xFFF0
#define OPENMIC_BLE_CHR_STATUS    0xFFF1
#define OPENMIC_BLE_CHR_WIFI_IP   0xFFF2
#define OPENMIC_BLE_CHR_COMMAND   0xFFF3

#define OPENMIC_BLE_STATUS_MAX    128
#define OPENMIC_BLE_IP_MAX        24
#define OPENMIC_BLE_COMMAND_MAX   16
#define OPENMIC_BLE_NAME_MAX      24
/* Legacy advertising packet is 31 bytes: 3 for flags, 4 for the 16-bit UUID
 * and 2 for the name header leave 22 bytes for the name itself. */
#define OPENMIC_BLE_ADV_NAME_MAX  22

static const char TAG[] = "OpenMicBLE";

static uint16_t status_handle;
static uint16_t wifi_ip_handle;
static uint16_t command_handle;
static uint16_t connection = BLE_HS_CONN_HANDLE_NONE;
static uint8_t own_addr_type;
static volatile bool wifi_on_requested;
static volatile bool wifi_off_requested;

/* Notifications are only sent once the phone subscribed, and at most once a
 * second: every notify is an ATT transaction on a link that shares the radio
 * with WiFi, so a burst of them stalls the connection. */
static bool status_subscribed;
static bool wifi_ip_subscribed;
static bool notify_pending;
static int64_t last_notify_us;

static char status_value[OPENMIC_BLE_STATUS_MAX];
static int battery_filtered;
static int battery_reported;
static char wifi_ip_value[OPENMIC_BLE_IP_MAX];
static char command_value[OPENMIC_BLE_COMMAND_MAX];

static int openmic_ble_gap_event (struct ble_gap_event *event, void *arg);
static int openmic_ble_access (uint16_t conn_handle, uint16_t attr_handle,
                               struct ble_gatt_access_ctxt *ctxt, void *arg);

static const struct ble_gatt_svc_def openmic_ble_svcs[] = {
   {
      .type = BLE_GATT_SVC_TYPE_PRIMARY,
      .uuid = BLE_UUID16_DECLARE (OPENMIC_BLE_SVC_UUID),
      .characteristics = (struct ble_gatt_chr_def[])
      {
         {
            .uuid = BLE_UUID16_DECLARE (OPENMIC_BLE_CHR_STATUS),
            .access_cb = openmic_ble_access,
            .flags = BLE_GATT_CHR_F_READ | BLE_GATT_CHR_F_NOTIFY,
            .val_handle = &status_handle,
         },
         {
            .uuid = BLE_UUID16_DECLARE (OPENMIC_BLE_CHR_WIFI_IP),
            .access_cb = openmic_ble_access,
            .flags = BLE_GATT_CHR_F_READ | BLE_GATT_CHR_F_NOTIFY,
            .val_handle = &wifi_ip_handle,
         },
         {
            .uuid = BLE_UUID16_DECLARE (OPENMIC_BLE_CHR_COMMAND),
            .access_cb = openmic_ble_access,
            .flags = BLE_GATT_CHR_F_READ | BLE_GATT_CHR_F_WRITE,
            .val_handle = &command_handle,
         },
         {
            0,
         },
      },
   },
   {
      0,
   },
};

/* RevK defaults the hostname to the raw 12 hex digit chip id, which is not
 * something a user can recognise in a phone's Bluetooth list, so give such
 * names an OpenMic prefix. Custom hostnames are advertised unchanged. */
static void
openmic_ble_device_name (char *out, size_t size)
{
   const char *host = (hostname && *hostname) ? hostname : revk_id;
   size_t length = strlen (host);

   if (length >= 8 && strspn (host, "0123456789abcdefABCDEF") == length)
      snprintf (out, size, "OpenMic-%s", host + length - 4);
   else if (length)
      snprintf (out, size, "%s", host);
   else
      snprintf (out, size, "OpenMic");
}

static void
openmic_ble_advertise (void)
{
   struct ble_gap_adv_params adv_params = { 0 };
   struct ble_hs_adv_fields fields = { 0 };
   char name[OPENMIC_BLE_NAME_MAX];
   size_t name_len;

   openmic_ble_device_name (name, sizeof (name));
   name_len = strlen (name);
   if (name_len > OPENMIC_BLE_ADV_NAME_MAX)
      name_len = OPENMIC_BLE_ADV_NAME_MAX;
   fields.flags = BLE_HS_ADV_F_DISC_GEN | BLE_HS_ADV_F_BREDR_UNSUP;
   fields.name = (uint8_t *) name;
   fields.name_len = name_len;
   fields.name_is_complete = 1;
   fields.uuids16 = (ble_uuid16_t[])
   {
      BLE_UUID16_INIT (OPENMIC_BLE_SVC_UUID)
   };
   fields.num_uuids16 = 1;
   fields.uuids16_is_complete = 1;

   adv_params.conn_mode = BLE_GAP_CONN_MODE_UND;
   adv_params.disc_mode = BLE_GAP_DISC_MODE_GEN;

   int rc = ble_gap_adv_set_fields (&fields);
   if (rc)
   {
      ESP_LOGE (TAG, "advertise fields failed rc=%d", rc);
      return;
   }

   rc = ble_gap_adv_start (own_addr_type, NULL, BLE_HS_FOREVER,
                           &adv_params, openmic_ble_gap_event, NULL);
   if (rc)
      ESP_LOGE (TAG, "advertise failed rc=%d", rc);
   else
      ESP_LOGI (TAG, "advertising name=%s service=0x%04X", name, OPENMIC_BLE_SVC_UUID);
}

static int
openmic_ble_gap_event (struct ble_gap_event *event, void *arg)
{
   switch (event->type)
   {
   case BLE_GAP_EVENT_CONNECT:
      if (!event->connect.status)
      {
         connection = event->connect.conn_handle;
         ESP_LOGI (TAG, "connected");
      } else
         connection = BLE_HS_CONN_HANDLE_NONE;
      return 0;

   case BLE_GAP_EVENT_DISCONNECT:
      connection = BLE_HS_CONN_HANDLE_NONE;
      status_subscribed = false;
      wifi_ip_subscribed = false;
      notify_pending = false;
      ESP_LOGI (TAG, "disconnected rc=%d", event->disconnect.reason);
      openmic_ble_advertise ();
      return 0;

   case BLE_GAP_EVENT_ADV_COMPLETE:
      openmic_ble_advertise ();
      return 0;

   case BLE_GAP_EVENT_MTU:
      /* The status JSON is around 90 bytes, so a small MTU would truncate it. */
      ESP_LOGI (TAG, "mtu=%d", event->mtu.value);
      return 0;

   case BLE_GAP_EVENT_SUBSCRIBE:
      if (event->subscribe.attr_handle == status_handle)
         status_subscribed = event->subscribe.cur_notify;
      else if (event->subscribe.attr_handle == wifi_ip_handle)
         wifi_ip_subscribed = event->subscribe.cur_notify;
      ESP_LOGI (TAG, "subscribe handle=%d status=%d ip=%d", event->subscribe.attr_handle,
                status_subscribed, wifi_ip_subscribed);
      /* The phone may subscribe before the next status change, so send what we
       * have now instead of leaving it waiting for one. */
      notify_pending = true;
      last_notify_us = 0;
      return 0;

   default:
      return 0;
   }
}

static int
openmic_ble_access (uint16_t conn_handle, uint16_t attr_handle,
                    struct ble_gatt_access_ctxt *ctxt, void *arg)
{
   const ble_uuid_t *uuid = ctxt->chr->uuid;
   int rc;

   if (ctxt->op == BLE_GATT_ACCESS_OP_READ_CHR)
   {
      if (attr_handle == status_handle)
      {
         rc = os_mbuf_append (ctxt->om, status_value, strlen (status_value));
         return rc ? BLE_ATT_ERR_INSUFFICIENT_RES : 0;
      }
      if (attr_handle == wifi_ip_handle)
      {
         rc = os_mbuf_append (ctxt->om, wifi_ip_value, strlen (wifi_ip_value));
         return rc ? BLE_ATT_ERR_INSUFFICIENT_RES : 0;
      }
      if (attr_handle == command_handle)
      {
         rc = os_mbuf_append (ctxt->om, command_value, strlen (command_value));
         return rc ? BLE_ATT_ERR_INSUFFICIENT_RES : 0;
      }
   }

   if (ctxt->op == BLE_GATT_ACCESS_OP_WRITE_CHR && attr_handle == command_handle)
   {
      uint16_t length = OS_MBUF_PKTLEN (ctxt->om);
      if (length > sizeof (command_value) - 1)
         return BLE_ATT_ERR_INVALID_ATTR_VALUE_LEN;
      rc = ble_hs_mbuf_to_flat (ctxt->om, command_value,
                                sizeof (command_value) - 1, &length);
      if (rc)
         return BLE_ATT_ERR_UNLIKELY;
      command_value[length] = 0;

      if (!strcasecmp (command_value, "WIFI_ON"))
      {
         wifi_on_requested = true;
         strcpy (command_value, "WIFI_ON");
      } else if (!strcasecmp (command_value, "WIFI_OFF"))
      {
         wifi_off_requested = true;
         strcpy (command_value, "WIFI_OFF");
      }
      return 0;
   }

   (void) uuid;
   return BLE_ATT_ERR_UNLIKELY;
}

static void
openmic_ble_gatt_register_cb (struct ble_gatt_register_ctxt *ctxt, void *arg)
{
   if (ctxt->op == BLE_GATT_REGISTER_OP_CHR)
   {
      if (ble_uuid_cmp (ctxt->chr.chr_def->uuid,
                        BLE_UUID16_DECLARE (OPENMIC_BLE_CHR_STATUS)) == 0)
         status_handle = ctxt->chr.val_handle;
      else if (ble_uuid_cmp (ctxt->chr.chr_def->uuid,
                             BLE_UUID16_DECLARE (OPENMIC_BLE_CHR_WIFI_IP)) == 0)
         wifi_ip_handle = ctxt->chr.val_handle;
      else if (ble_uuid_cmp (ctxt->chr.chr_def->uuid,
                             BLE_UUID16_DECLARE (OPENMIC_BLE_CHR_COMMAND)) == 0)
         command_handle = ctxt->chr.val_handle;
   }
}

static void
openmic_ble_sync (void)
{
   int rc = ble_hs_util_ensure_addr (0);
   if (rc)
   {
      ESP_LOGE (TAG, "address ensure failed rc=%d", rc);
      return;
   }
   rc = ble_hs_id_infer_auto (0, &own_addr_type);
   if (rc)
   {
      ESP_LOGE (TAG, "address infer failed rc=%d", rc);
      return;
   }
   ESP_LOGI (TAG, "BLE host synchronized addr_type=%d", own_addr_type);
   openmic_ble_advertise ();
}

static void
openmic_ble_reset (int reason)
{
   ESP_LOGW (TAG, "reset rc=%d", reason);
}

static void
openmic_ble_host_task (void *param)
{
   nimble_port_run ();
   nimble_port_freertos_deinit ();
}

static void
openmic_ble_refresh (const openmic_ble_status_t *status)
{
   char ip[OPENMIC_BLE_IP_MAX] = "";

   if (sta_netif)
   {
      esp_netif_ip_info_t info;
      if (!esp_netif_get_ip_info (sta_netif, &info) && info.ip.addr)
         esp_ip4addr_ntoa (&info.ip, ip, sizeof (ip));
   }

   int battery = status->battery_mv;
   /* The ADC reading swings by over a hundred millivolts between samples and
    * comes back as 0 whenever a sample is not finite. Smooth it, then only move
    * the reported value once it is 150 mV away from the last one: otherwise it
    * hovers on a rounding boundary and notifies every second forever. */
   if (battery > 0)
      battery_filtered = battery_filtered ? (battery_filtered * 7 + battery) / 8 : battery;
   if (battery_filtered
       && (abs (battery_filtered - battery_reported) >= 150 || !battery_reported))
      battery_reported = ((battery_filtered + 50) / 100) * 100;
   battery = battery_reported;
   const char *record = status->recording ? "ON" : "OFF";
   const char *sdcard = !status->sd_present ? "NONE" :
                        status->sd_mounted ? "MOUNTED" : "UNMOUNTED";

   char old_status[OPENMIC_BLE_STATUS_MAX];
   char old_ip[OPENMIC_BLE_IP_MAX];
   strcpy (old_status, status_value);
   strcpy (old_ip, wifi_ip_value);

   snprintf (status_value, sizeof (status_value),
             "{\"record\":\"%s\",\"sdcard\":\"%s\",\"wifi\":\"%s\",\"battery_mv\":%d}",
             record, sdcard, ip, battery);
   strncpy (wifi_ip_value, ip, sizeof (wifi_ip_value) - 1);
   wifi_ip_value[sizeof (wifi_ip_value) - 1] = 0;

   if (strcmp (old_status, status_value) || strcmp (old_ip, wifi_ip_value))
      notify_pending = true;
   if (!notify_pending || connection == BLE_HS_CONN_HANDLE_NONE)
      return;

   int64_t now = esp_timer_get_time ();
   if (now - last_notify_us < 1000000)
      return;                   // Coalesce, retried on the next 100 ms poll
   last_notify_us = now;
   notify_pending = false;

   if (status_subscribed)
   {
      struct os_mbuf *om = ble_hs_mbuf_from_flat (status_value, strlen (status_value));
      int rc = om ? ble_gatts_notify_custom (connection, status_handle, om) : BLE_HS_ENOMEM;
      if (rc)
         ESP_LOGW (TAG, "status notify failed rc=%d len=%d", rc, (int) strlen (status_value));
   }
   if (wifi_ip_subscribed)
   {
      struct os_mbuf *om = ble_hs_mbuf_from_flat (wifi_ip_value, strlen (wifi_ip_value));
      int rc = om ? ble_gatts_notify_custom (connection, wifi_ip_handle, om) : BLE_HS_ENOMEM;
      if (rc)
         ESP_LOGW (TAG, "ip notify failed rc=%d len=%d", rc, (int) strlen (wifi_ip_value));
   }
}

void
openmic_ble_init (void)
{
   /* NimBLE logs every ATT transaction at INFO, which buries the serial console
    * while a phone is connected. */
   esp_log_level_set ("NimBLE", ESP_LOG_WARN);
   ESP_LOGI (TAG, "initializing NimBLE standby service");
   int rc = nimble_port_init ();
   if (rc)
   {
      ESP_LOGE (TAG, "nimble init failed rc=%d", rc);
      return;
   }

   ble_hs_cfg.reset_cb = openmic_ble_reset;
   ble_hs_cfg.sync_cb = openmic_ble_sync;
   ble_hs_cfg.gatts_register_cb = openmic_ble_gatt_register_cb;
   ble_hs_cfg.store_status_cb = ble_store_util_status_rr;

   ble_store_config_init ();
   ble_svc_gap_init ();
   ble_svc_gatt_init ();

   rc = ble_gatts_count_cfg (openmic_ble_svcs);
   if (rc)
   {
      ESP_LOGE (TAG, "gatt count failed rc=%d", rc);
      return;
   }
   rc = ble_gatts_add_svcs (openmic_ble_svcs);
   if (rc)
   {
      ESP_LOGE (TAG, "gatt add failed rc=%d", rc);
      return;
   }

   char name[OPENMIC_BLE_NAME_MAX];
   openmic_ble_device_name (name, sizeof (name));
   ble_svc_gap_device_name_set (name);
   ESP_LOGI (TAG, "device name %s", name);

   strcpy (command_value, "");
   nimble_port_freertos_init (openmic_ble_host_task);
}

void
openmic_ble_status_update (const openmic_ble_status_t *status)
{
   if (!status)
      return;
   openmic_ble_refresh (status);
}

bool
openmic_ble_wifi_on_requested (void)
{
   bool requested = wifi_on_requested;
   wifi_on_requested = false;
   return requested;
}

bool
openmic_ble_wifi_off_requested (void)
{
   bool requested = wifi_off_requested;
   wifi_off_requested = false;
   return requested;
}
