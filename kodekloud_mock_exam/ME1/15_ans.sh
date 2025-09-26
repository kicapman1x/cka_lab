#!/bin/bash

k logs purple-curl-cka27-trb
#quite useless lol

k get svc purple-svc-cka27-trb 
#its up ah

#try curling service 
curl 172.20.170.62:8080
#failed to connect hm

#get nginx pod
k get po purple-app-cka27-trb -o wide

#curl pod itself
curl 172.17.2.16

#this works, so its between service and pod not working
k describe svc purple-svc-cka27-trb 

#wei the targetport salah already lo

k edit svc purple-svc-cka27-trb -o yaml --save-config
#change targetPort from 8080 to 80
#matter of fact, they are curling at 80, so port also change to 80

#check 
curl 172.20.170.62:80
k exec purple-curl-cka27-trb -- curl http://purple-svc-cka27-trb
k logs purple-curl-cka27-trb
#works

