#! /bin/bash

argocd login "$ARGOCD_SERVER" \
  --username "$ARGOCD_ADMIN_USER" \
  --password "$ARGOCD_ADMIN_PWD" \
  --grpc-web
