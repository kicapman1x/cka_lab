#!/bin/bash

#Before executing this, once inside the container, perform the following:
#kubeadm upgrade plan // at time of performing, the current is v1.33.2, and I need to upgrade to v1.33.4 

#instructions found at: 
#https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/

#Upgrade and install requirements 
apt-get update

apt-get install -y apt-transport-https ca-certificates curl gpg

#Download public signing key for kubernetes repo
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.33/deb/Release.key | gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg

#Add this so that apt install will auto go to kubernetes repo
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.34/deb/ /' | tee /etc/apt/sources.list.d/kubernetes.list

#install all the updated goodies
apt-get update
apt-get install -y kubelet kubeadm kubectl
apt-mark hold kubelet kubeadm kubectl

#restart kubelet
systemctl daemon-reload
systemctl restart kubelet

#properly upgrade de 
kubeadm upgrade apply v1.33.4

#pro-tip, dont blindly copy the url like i did - i copied v1.34. I managed to upgrade it to 1.34.0 though, but CKA will penalise you, definitely 