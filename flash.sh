#/!/bin/bash
#my_fs=$(df -h | grep 'RPI')
#echo "$my_fs"
sudo mkdir -p /mnt/pico-w
sudo mount /dev/sdb1 /mnt/pico-w
sudo cp build/timer.uf2 /mnt/pico-w
sudo sync
sudo umount /mnt/pico-w
