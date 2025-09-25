#!/bin/bash

k get deploy pink-depl-cka14-trb

#realise that 0/2 ready 

k describe deploy pink-depl-cka14-trb

#no errors leh 

#check kube system pods
k get po -n kube-system

k describe po kube-controller-manager-cluster4-controlplane -n kube-system

#notice that the error is - Error: failed to create containerd task: failed to create shim task: OCI runtime create failed: runc create failed: unable to start container process: exec: "kube-controller-manage": executable file not found in $PATH: unknown

vi /etc/kubernetes/manifests/kube-controller-manager.yaml 
#correct the 'kube-controller-manage' to 'kube-controller-manager'

#check again
k get deploy pink-depl-cka14-trb