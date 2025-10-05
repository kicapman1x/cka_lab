#!/bin/bash

k get svc
#nodeapp-svc-cka08-trb

k get ingress
k get ingress nodeapp-ing-cka08-trb -o yaml
#notice that need change 

k edit ingress nodeapp-ing-cka08-trb -o yaml --save-config
#change host to kodekloud-ingress.app
#change service to nodeapp-svc-cka08-trb
#change port to 3000

#test
curl http://kodekloud-ingress.app
#works!