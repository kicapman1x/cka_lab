#!/bin/bash

vi /root/app-wl03/app-wl03.yaml 
#note that request mem is 1Gi, limit is 100Mi (really lol)
#change to request 10Mi 

k create -f /root/app-wl03/app-wl03.yaml 

k get po
#shd b ok