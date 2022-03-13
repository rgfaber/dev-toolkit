#! /bin/sh 

sudo apt-get install -y debootstrap qemu-user-static

mkdir ./ubuntu
cd ubuntu
export ubuntu=`pwd`

dd if=/dev/zero of=./image.img bs=1M count=4096

