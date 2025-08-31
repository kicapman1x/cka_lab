#!/bin/bash

#Use on worker nodes first -- then control-plane
#use: 
#docker cp ./container_network_setup.sh <container_name>:/root/container_network_setup.sh
#docker exec -it <container_name> bash /root/container_network_setup.sh

hostname=$(hostname)

#Bridge installation
apt update

apt install wget

wget https://github.com/containernetworking/plugins/releases/download/v1.7.1/cni-plugins-linux-amd64-v1.7.1.tgz

tar -xvf cni-plugins-linux-amd64-v1.7.1.tgz

mv bridge /opt/cni/bin/

#installing CNI on control-plane
if [[ $hostname == *"control-plane" ]]; then
    kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/master/manifests/calico.yaml
    echo "***************************** installation complete **********************************"
    echo "Listing out all pods"
    kubectl get po -A 
fi 