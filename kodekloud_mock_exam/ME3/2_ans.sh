#!/bin/bash

helm list -A

k get deploy -A -o wide
#GOTCHA!
#security-alpha-01   security-alpha-apd        1/1     1            1           8m13s   security-alpha-apd        kodekloud/click-counter:latest

helm uninstall security-alpha-apd -n security-alpha-01

#check
k get deploy -A 
#associated deployments gone ma