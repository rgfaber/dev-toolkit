#! /bin/bash


echo 'ref: https://github.com/nats-io/nack#getting-started'
echo 'ref: https://nats-io.github.io/k8s/'
echo 'ref: https://github.com/nats-io/nats-operator'

helm repo add nats https://nats-io.github.io/k8s/helm/charts/
helm install nats nats/nats --set nats.image=synadia/nats-server:nightly --set=nats.jetstream.enabled=true --set cluster.enabled=true
helm install nack nats/nack --set=jetstream.nats.url=nats://nats:4222



# curl -sSL https://nats-io.github.io/k8s/setup.sh | sh

# Disable TLS
# curl -sSL https://nats-io.github.io/k8s/setup.sh | sh -s -- --without-tls

# Disable Auth and TLS (also disables NATS surveyor and NATS Streaming)
# curl -sSL https://nats-io.github.io/k8s/setup.sh | sh -s -- --without-tls --without-auth

# kubectl port-forward deployments/nats-surveyor-grafana 3000:3000

# curl -sSL https://nats-io.github.io/k8s/destroy.sh | sh