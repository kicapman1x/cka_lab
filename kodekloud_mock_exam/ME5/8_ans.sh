#!/bin/bash

k describe no cluster2-controlplane | grep -i taint
k get ds -n kube-system logs-cka26-trb -o yaml | grep -i toleration -A10 
#bo gam

k edit ds -n kube-system logs-cka26-trb -o yaml --save-config
#   - effect: NoSchedule
#     key: node-role.kubernetes.io/control-plane
#     operator: Exists

k describe po -n kube-system logs-cka26-trb-5ltzj logs-cka26-trb-6hvhq | grep -i node:
# Node:                 cluster2-node01/192.168.141.55
# Node:                 cluster2-controlplane/192.168.140.146
#Both have now 