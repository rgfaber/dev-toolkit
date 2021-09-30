#! /bin/sh

# ref: https://argocd-applicationset.readthedocs.io/en/stable/
# ref: https://argocd-applicationset.readthedocs.io/en/stable/Geting-Started/

# **Why we need this** 
# The ArgoCD ApplicationSet Resource allows us to declare the set of applications we want ArgoCD to manage.

argocd login "$ARGOCD_SERVER" --username "$ARGOCD_ADMIN_USER" --password "$ARGOCD_ADMIN_PWD"

kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj-labs/applicationset/v0.1.0/manifests/install.yaml