#/!/bin/bash
MNT_PICO_DIR=/mnt/pico-w/
filesysInfo=$(df -h | grep 'RPI')
echo "$filesysInfo"

#Prompt for filesystem that has mounted dir
echo "Enter the fielsystem from above output..."
read myFs

echo "Filesystem with Pico-W = $myFs"

if [ ! -d "$MNT_PICO_DIR" ];
then
    echo "Creating $MNT_PICO_DIR directory..."
    mkdir -p $MNT_PICO_DIR
fi

sudo mount $myFs $MNT_PICO_DIR
sudo cp build/timer.uf2 $MNT_PICO_DIR
sudo sync
sudo umount $MNT_PICO_DIR
