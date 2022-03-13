#! /bin/bash

sudo apt-add-repository ppa:maas/3.0

sudo apt update

sudo apt-get -y install maas

sudo apt upgrade -y --autoremove