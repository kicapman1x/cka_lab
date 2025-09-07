#!/bin/bash

curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.29.0/kind-linux-amd64 && chmod +x ./kind && sudo mv ./kind/usr/local/bin/kind

#name u can put whatever
sudo kind create cluster --image kindest/node:v1.33.2 --config ./cluster.yaml --name k8s-cluster

curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && sudo chmod +x kubectl && sudo mv kubectl /usr/local/bin/kubectl

#the nomenclature for container will be <cluster name>-<control-plane/worker#>
#you may insert the desired restart policy lol I just dont want it to restart always
sudo docker update --restart no k8s-cluster-worker k8s-cluster-worker2 k8s-cluster-control-plane

source kindvars.env

#ingress-controller
kubectl apply -f nginx-ingress-controller.yaml