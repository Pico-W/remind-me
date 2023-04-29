#/!/bin/bash
BUILD_DIR=build
if [ ! -d "$BUILD_DIR" ];
then
    echo "Creating $BUILD_DIR directory..."
    mkdir build
fi
cd build
echo "Exporting PICO_SDK_PATH"
export PICO_SDK_PATH=../pico-sdk
FREERTOS_KERNEL_PATH=../FreeRTOS-Kernel
WIFI_SSID=$1
WIFI_PASSWORD=$2
cmake -DPICO_BOARD=pico_w -DFREERTOS_KERNEL_PATH=$FREERTOS_KERNEL_PATH -DWIFI_SSID=$WIFI_SSID -DWIFI_PASSWORD=$WIFI_PASSWORD -DCMAKE_EXPORT_COMPILE_COMMANDS=1 ..
make
