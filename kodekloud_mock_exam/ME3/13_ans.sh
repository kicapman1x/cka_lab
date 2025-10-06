#!/bin/bash

k get po -A

k logs kube-controller-manager-cluster4-controlplane
#Error from server: Get "https://192.168.36.193:10250/containerLogs/kube-system/kube-controller-manager-cluster4-controlplane/kube-controller-manager": remote error: tls: internal error
k describe po kube-controller-manager-cluster4-controlplane -n kube-system
#kubelet  Failed to create pod sandbox: open /run/systemd/resolve/resolv.conf: no such file or directory

cat /etc/kubernetes/manifests/kube-controller-manager.yaml | grep -i resolv
#nothing 

cat /var/lib/kubelet/config.yaml | grep -i resolv 
#got

vi /var/lib/kubelet/config.yaml
#edit to /etc/resolv.conf

#lol idk even chatgpt dk