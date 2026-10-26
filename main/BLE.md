# OpenMic BLE standby protocol

BLE is used as a low power standby channel only. Recordings are still listed and
downloaded over WiFi HTTP.

## Service

Custom 16-bit UUIDs:

| UUID | Attribute | Access | Meaning |
|------|-----------|--------|---------|
| `FFF0` | Service | - | OpenMic standby service |
| `FFF1` | Status | read + notify | JSON status string |
| `FFF2` | WiFi IP | read + notify | IPv4 address, empty when offline |
| `FFF3` | Command | read + write | `WIFI_ON` / `WIFI_OFF` |

Android represents these as
`0000fff0-0000-1000-8000-00805f9b34fb` and so on.

Status JSON:

```json
{"record":"OFF","sdcard":"MOUNTED","wifi":"192.168.1.50","battery_mv":4100}
```

- `record`: `ON` or `OFF`
- `sdcard`: `NONE`, `MOUNTED` or `UNMOUNTED`
- `wifi`: IPv4 address, empty while the link is down
- `battery_mv`: battery voltage in millivolts

The phone writes `WIFI_ON` before transferring. The main OpenMic loop applies
the request and, once an IP address appears, notifies the phone which then
switches to `http://<ip>/files`.
