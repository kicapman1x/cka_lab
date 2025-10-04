#!/bin/bash

k create -f 10_db-secret-wl05.yaml

#u can simply edit la LOL
k edit po webapp-pod-wl05 -n canara-wl05 -o yaml --save-config

k get svc -n canara-wl05 #lai u can see the port number of the nodeport svc

curl http://cluster3-controlplane:31020

#LANJIAO LA DB_Database=Not Set; how I know the value?