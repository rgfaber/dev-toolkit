#! /bin/bash

echo ''
echo '*************************'
echo '** INSTALLING CIVO-CLI **'
echo '*************************'

../0010-curl/inst-curl.sh

curl -sL https://civo.com/get | sh

sudo mv
