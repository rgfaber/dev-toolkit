#! /bin/sh

#reference: https://argoproj.github.io/argo-cd/getting_started/

echo 'Installing ArgoCD to cluster'

kubectl create namespace argocd

kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

echo 'Get ArgoCD admin password'
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d

echo 'In order to change the password, follow instructions on https://www.youtube.com/watch?v=c4v7wGqKcEY'
