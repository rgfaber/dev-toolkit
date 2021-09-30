#! /bin/sh

######################## install xclip
echo
echo =================
echo INSTALLING XClip
echo =================
sudo apt install -y xclip
echo =================
echo
######################## install curl #########################
echo
echo ===============
echo INSTALLING Curl
echo ===============

sudo apt-get -y install curl

echo ===============
echo
########################## install Docker #####################

echo
echo ==================
echo INSTALLING Docker
echo =================

rm -rf get-docker.sh

curl -fsSL https://get.docker.com -o get-docker.sh

sudo sh get-docker.sh

sudo usermod -aG docker $USER

rm -rf get-docker.sh

######################### install kind ########################
echo
echo ===============
echo INSTALLING Kind
echo ===============

curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64

chmod +x ./kind

sudo mv ./kind /usr/local/bin/kind

echo ===============
echo

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

clear

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
