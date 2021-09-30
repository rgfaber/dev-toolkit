#! /bin/sh

##################### install kubectl ##############################
echo
echo ==================
echo INSTALLING KubeCtl
echo ==================

curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl

chmod +x kubectl

sudo mv /usr/local/bin/kubectl /usr/local/bin/kubectl.bak

sudo mv -v kubectl /usr/local/bin

echo ===============
echo

echo ====================
echo INSTALLATION SUMMARY
echo ====================
echo
echo '   curl'
echo '**********'
curl --version
echo 
echo '   docker  '
echo '**********'
docker --version
echo 
echo '   kind  '
echo '**********'
kind --version
echo 
echo '  kubectl  '
echo '***********'
kubectl version --short
echo
echo ====================
