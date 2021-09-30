#! /bin/sh

#reference: https://argoproj.github.io/argo-cd/getting_started/

echo 'Installing ArgoCD to cluster'

kubectl create namespace argocd

kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml


### Port Forwarding for kind cluster
# kubectl port-forward svc/argocd-server -n argocd 8080:443
## argocd-cli can access argocd server on port 8080



echo '########## WORKAROUND CODE #############################################################################'
echo '## IMPORTANT: THE LINE THAT FOLLOWS IS TO TACKLE THE ingress validation error bug'
echo '## REF: https://githubmemory.com/repo/kubernetes/ingress-nginx/issues/7306'
echo '## We must update to higer kind release asap, hoping the bug will be solved'
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/a8408cdb51086a099a2c71ed3e68363eb3a7ae60/deploy/static/provider/kind/deploy.yaml
echo '###########################################################################################################'
kubectl patch deployment argocd-server --namespace argocd --patch "$(cat argocd-server-patch.yaml)" 
kubectl apply  -f nginx-ingress-http.yaml
kubectl apply  -f nginx-ingress-grpc.yaml


clear
echo 'waiting 30s until argocd is fully available...'
sleep 30s

echo 'Get ArgoCD admin password'
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d

echo
echo

argocd login ingress.local --grpc-web

echo 'In order to change the password, follow instructions on https://www.youtube.com/watch?v=c4v7wGqKcEY'
argocd account update-password --grpc-web



