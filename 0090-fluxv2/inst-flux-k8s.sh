#! /bin/bash

# curl -s https://fluxcd.io/install.sh | sudo bash

helm install --create-namespace -n flux-system helm-flux http://oam.dev/catalog/helm-flux2-0.1.0.tgz

