#! /bin/sh

########################## install Docker #####################

echo
echo ==================
echo INSTALLING Docker
echo =================

rm -rf get-docker.sh

curl -fsSL https://get.docker.com -o get-docker.sh

sudo sh get-docker.sh

sudo usermod -aG docker $USER

rm -rf get-docker.sh

clear

echo ====================
echo INSTALLATION SUMMARY
echo ====================
echo
echo '   curl'
echo '**********'
curl --version
echo 
echo '   docker  '
echo '**********'
docker --version
echo ====================
