#!/bin/bash

k create -f apache.yaml

#this one u need to wait urself LOLOLOL 
k get po -n default 
#just make sure all gets created and runs 

k edit deploy apache-deployment -o yaml --save-config 
#u just change replicas to 5 and the image to httpd:alpine