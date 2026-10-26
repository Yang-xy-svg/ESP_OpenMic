#ifndef OPENMIC_BLE_H
#define OPENMIC_BLE_H

#include <stdbool.h>

typedef struct
{
   bool recording;
   bool sd_present;
   bool sd_mounted;
   int battery_mv;
} openmic_ble_status_t;

void openmic_ble_init (void);
void openmic_ble_status_update (const openmic_ble_status_t *status);
bool openmic_ble_wifi_on_requested (void);
bool openmic_ble_wifi_off_requested (void);

#endif
