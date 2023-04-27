cmake_minimum_required(VERSION 3.13)

include(pico_sdk_import.cmake)

project(timer C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
pico_sdk_init()

if (TARGET tinyusb_device)
    add_executable(timer
        src/picow_blink.cpp
        )

pico_enable_stdio_usb(timer 1)
pico_enable_stdio_uart(timer 1)

pico_add_extra_outputs(timer)

target_include_directories(timer PRIVATE ${CMAKE_CURRENT_LIST_DIR} )

target_link_libraries(timer pico_cyw43_arch_lwip_threadsafe_background pico_stdlib)
elseif(PICO_ON_DEVICE)
    message(WARNING "not building hello_usb because TinyUSB submodule is not initialized in the SDK")
endif()
