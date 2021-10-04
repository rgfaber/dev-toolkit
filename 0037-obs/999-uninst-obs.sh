#! /bin/bash

echo 'This script installs Open Broadcast Studio for linux'

sudo apt remove -y obs-studio

sudo add-apt-repository -r -y ppa:obsproject/obs-studio

sudo apt update

sudo apt upgrade -y --autoremove