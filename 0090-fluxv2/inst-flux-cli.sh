#! /bin/bash

echo 'ref: https://fluxcd.io/docs/get-started/'

curl -s https://fluxcd.io/install.sh | sudo bash

flux --version

flux check --pre