#!/bin/bash

k get po
#can see the pending is 0 for pod in qn

k describe po grey-cka21-trb
#Events is none leh

k logs grey-cka21-trb
#no logs at all 

#lets see kube system pods
k get po -n kube-system
#notice that kube-scheduler-cluster4-controlplane is crashing

k describe po kube-scheduler-cluster4-controlplane -n kube-system
#Warning  BackOff  33s (x33 over 5m38s)   kubelet  Back-off restarting failed container kube-scheduler in pod kube-scheduler-cluster4-controlplane_kube-system(5f465a06e04c6bd15f30009df81607d1)

k logs kube-scheduler-cluster4-controlplane -n kube-system
#1 run.go:72] "command failed" err="stat /etc/kubernetes/scheduler.config: no such file or directory"
#notice that its - /etc/kubernetes/scheduler.conf instead of .config 

vi /etc/kubernetes/manifests/kube-scheduler.yaml 
#replace

#check again 
k get po -n kube-system
#scheduler ok 

#check on pod in question
k get po
#ok