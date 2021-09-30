#! /bin/bash

# create OpenFaaS namespaces
kubectl apply -f https://raw.githubusercontent.com/openfaas/faas-netes/master/namespaces.yml

# add OpenFaaS Helm repo
helm repo add openfaas https://openfaas.github.io/faas-netes/

# generate a random password
PASSWORD=$(head -c 12 /dev/urandom | shasum| cut -d' ' -f1)

kubectl -n openfaas create secret generic basic-auth \
--from-literal=basic-auth-user=admin \
--from-literal=basic-auth-password="$PASSWORD"

# get latest chart version
helm repo update

# install with basic auth enabled
helm upgrade openfaas --install openfaas/openfaas \
    --namespace openfaas  \
    --set generateBasicAuth=true \
    --set functionNamespace=openfaas-fn \
    --set operator.create=true \
    --set ingress.enabled=true \
    --set clusterRole=true
