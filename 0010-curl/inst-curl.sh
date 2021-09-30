#! /bin/sh

######################## install curl #########################
echo
echo ===============
echo INSTALLING Curl
echo ===============

sudo apt-get update && sudo apt-get upgrade -y --autoremove

sudo apt-get -y install curl

echo ===============
echo

clear

echo ====================
echo INSTALLATION SUMMARY
echo ====================
echo
echo '   curl'
echo '**********'
curl --version
echo ====================
