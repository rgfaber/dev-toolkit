#! /bin/bash

helm uninstall oam -n oam-system
kubectl delete -f examples/containerized-workload
kubectl delete namespace oam-system --wait
