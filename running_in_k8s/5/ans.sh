#!/bin/bash

#From a three-node cluster, cordon one of the worker nodes.
k cordon k8s-cluster-worker

#Schedule a Pod without a nodeSelector.
k create -f no-nodeselector.yaml
#we see that no-nodeselector is scheduled to worker2
k get po -o wide 

#Uncordon the worker node and edit the Pod, applying a new node name to the YAML (set it to the node that was just uncordoned). After replacing the YAML, see if the Pod is scheduled to the recently uncordoned node.
k uncordon k8s-cluster-worker

#delete po
k delete po node-selector

#recreate
k create -f no-nodeselector_edited.yaml

#Start a basic nginx Deployment; remove the taint from the control plane node so that Pods don’t need a toleration to be scheduled to it. Add a nodeSelector to the Pod spec within the Deployment, and see if the Pod is now running on the control plane node.

#seeing the taint in control-plane
k describe no | grep -i taint

k taint no k8s-cluster-control-plane node-role.kubernetes.io/control-plane:NoSchedule-

#create lor
k create -f nginx.yaml