#!/bin/bash

k get po

k get svc 

k get svc pink-svc-cka16-trb 
#notice that this states UDP 

k edit svc pink-svc-cka16-trb -o yaml --save-config
#edit from UDP to TCP and save

#see if can curl the service 
curl 172.20.15.200:5000
#IP I got by doing get svc 
#it works, so you create ingress would work

#curl to test
curl http://kodekloud-pink.app
#works