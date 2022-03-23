#! /bin/bash

sudo apt install -y libglew-dev libvolk1-dev  libfftw3-dev libglfw3-dev libvolk2-dev libsoapysdr-dev libairspyhf-dev libiio-dev libad9361-dev librtaudio-dev libhackrf-dev
sudo dpkg -i sdrpp_ubuntu_focal_amd64.deb
sudo apt upgrade -y --autoremove