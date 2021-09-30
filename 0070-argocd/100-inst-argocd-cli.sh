#! /bin/sh

#reference: https://argoproj.github.io/argo-cd/getting_started/

echo 'installing ArgoCD CLI'

sudo curl -sSL -o /usr/local/bin/argocd https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
sudo chmod +x /usr/local/bin/argocd

echo 'Get ArgoCD admin password'
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
argocd login

echo 'In order to change the password, follow instructions on https://www.youtube.com/watch?v=c4v7wGqKcEY'
