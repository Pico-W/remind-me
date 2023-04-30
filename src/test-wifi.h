#ifndef TEST_WIFI_H
#define TEST_WIFI_H

#include <stdbool.h>
#include <stdio.h>

#include "pico/stdlib.h"
#include "pico/cyw43_arch.h"
#include "pico/time.h"

#ifdef __cplusplus
extern "C" {
#endif
int connect_wifi(void);
#ifdef __cplusplus
}
#endif

#endif /* TEST_WIFI_H */
