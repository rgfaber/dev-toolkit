#! /bin/sh

######################### install kind ########################
echo
echo ===============
echo INSTALLING Kind
echo ===============

curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64

chmod +x ./kind

sudo mv ./kind /usr/local/bin/kind

echo ===============
echo


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
echo 
echo '   kind  '
echo '**********'
kind --version
echo 
echo ====================
