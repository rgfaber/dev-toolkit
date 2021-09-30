#! /bin/bash


helm repo add kubevela https://kubevelacharts.oss-accelerate.aliyuncs.com/core



helm repo update
helm install --create-namespace -n vela-system kubevela kubevela/vela-core
helm test kubevela -n vela-system