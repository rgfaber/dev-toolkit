#! /bin/bash

sudo apt-get update

sudo apt-get purge hplip hplip-data hplip-doc hplip-gui hpijs-ppds \
libsane-hpaio printer-driver-hpcups printer-driver-hpijs

sudo rm -rf /usr/share/hplip/

sudo apt-get update

sudo apt-get upgrade -y --autoremove

# sh hplip-3.21.12.run

# sudo chown 755 -R /etc/cups/ppd