#! /bin/bash

echo 'This script installs Open Broadcast Studio for linux'

sudo add-apt-repository -y ppa:obsproject/obs-studio

sudo apt update

sudo apt install -y obs-studio

sudo apt upgrade -y --autoremove