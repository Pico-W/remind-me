#include <iostream>
#include "pico/time.h"
#include "test-wifi.h"
#include "pico_clock.h"

int main()
{
    stdio_init_all();
    std::cout<< "Hello World" << std::endl;
    pico_clock my_sample_clock = pico_clock(6, 30, 10);
    while(1){
        std::cout << "in C++ code now" << std::endl;
        std::cout << my_sample_clock.hour << my_sample_clock.minutes << my_sample_clock.seconds << std::endl;
        my_sample_clock.seconds++;
        sleep_ms(1000);
    }

    int status = connect_wifi();

    return 0;
}