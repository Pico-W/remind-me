#include <stdbool.h>
#include <stdio.h>

#include "pico/stdlib.h"
#include "pico/cyw43_arch.h"
#include "pico/time.h"

#if defined(WIFI_SSID) && defined(WIFI_PASSWORD)
#define WIFI_DEFINED 1
#endif


int main() {
 stdio_init_all();
 bool connected = false;

 if (cyw43_arch_init_with_country(CYW43_COUNTRY_CANADA)) {
    printf("failed to initialise\n");
 }

 cyw43_arch_enable_sta_mode();

#if WIFI_DEFINED
 char ssid[] = WIFI_SSID;
 char pass[] = WIFI_PASSWORD;
 if (cyw43_arch_wifi_connect_timeout_ms(ssid, pass, CYW43_AUTH_WPA2_AES_PSK, 10000)) {
    printf("failed to connect\n");
 }
 else {
    connected = true;
 }

 while (true && connected) {
     printf("Connected!!!\n");
     sleep_ms(1000);
 }

 while (true && !connected) {
     printf("Not Connected!!!\n");
     sleep_ms(1000);
 }
#else
 while(true)
 {
     printf("Wifi SSID and Password Not Defined\n");
     sleep_ms(1000);
 }
#endif
}
