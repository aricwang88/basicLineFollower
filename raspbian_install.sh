#!/bin/bash
apt-get -y update
apt-get -y upgrade
apt-get -y install libcv-dev python-opencv libopencv-dev libcv2.4
apt-get -y install libv4l-dev v4l-utils
raspi-config noint do_camera 1
raspi-config noint get_config_var gpu_mem_256 /boot/config.txt
