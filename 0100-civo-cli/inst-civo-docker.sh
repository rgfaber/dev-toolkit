#! /bin/sh

touch $HOME/.civo.json
mkdir $HOME/.kube/
touch $HOME/.kube/config
alias civo="docker run -it --rm -v $HOME/.civo.json:/.civo.json -v $HOME/.kube/config:$HOME/.kube/config civo/cli:latest"
docker run -it --rm -v $HOME/.civo.json:/.civo.json -v $HOME/.kube/config:$HOME/.kube/config civo/cli:latest
