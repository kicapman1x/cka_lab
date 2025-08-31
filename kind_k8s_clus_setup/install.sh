#!/bin/bash

curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.29.0/kind-linux-amd64 && chmod +x ./kind && sudo mv ./kind/usr/local/bin/kind

sudo kind create cluster --image kindest/node:v1.33.2 --config ./cluster.yaml --name cka-cluster

curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && sudo chmod +x kubectl && sudo mv kubectl /usr/local/bin/kubectl