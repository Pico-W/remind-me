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
cmake -DPICO_BOARD=pico_w -DCMAKE_EXPORT_COMPILE_COMMANDS=1 ..
make
