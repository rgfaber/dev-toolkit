#! /bin/bash

echo 'ref: https://www.reddit.com/r/kubernetes/comments/kayu97/how_to_uninstall_argocd/'

kubectl delete -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

kubectl delete namespace argocd