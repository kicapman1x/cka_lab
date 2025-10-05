#!/bin/bash

k get pod

k edit po nginx-wl06 -o yaml --save-config
#in resources just replace the request to 100Mi lor
#keep saving 

k replace -f /tmp/kubectl-edit-3303940397.yaml --force

#check
k get pod