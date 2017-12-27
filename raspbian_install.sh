#!/bin/bash
echo "Make sure you run this script as sudo"
echo "sudo ./rasbian_install.sh"
apt-get -y update
apt-get -y upgrade
apt-get -y install libcv-dev python-opencv libopencv-dev libcv2.4
apt-get -y install libv4l-dev v4l-utils

# noint doesn't appear to work
#raspi-config noint do_camera 1
#raspi-config noint get_config_var gpu_mem_256 /boot/config.txt

# Add the parameters directly to the /boot/config.txt file
# if you have already run raspi-config you may want to delete
# the config file and start fresh
# enable the camera
echo "start_x=1" >> /boot/config.txt
# Change the GPU mem to 256 (min would be 128)
echo "gpu_mem=256" >> /boot/config.txt

echo "Now reboot your rasberry pi"
echo "sudo reboot"
echo ""
echo "Once rebooted go to the location you downloaded the github repository and run"
echo "./run.sh"
