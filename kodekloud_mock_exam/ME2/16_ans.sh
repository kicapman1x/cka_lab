#!/bin/bash

systemctl list-unit-files | grep -i kube
#Nothing, means kubelet not installed ah

sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl gpg
sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.34/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl

sudo systemctl enable --now kubelet

#test
k api-resources
#works