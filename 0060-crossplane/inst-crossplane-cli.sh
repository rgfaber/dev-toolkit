#! /bin/sh

sudo curl -sL https://raw.githubusercontent.com/crossplane/crossplane-cli/master/bootstrap.sh | sudo bash

echo 'you can now use kubectl crossplane'

kubectl crossplane --help
