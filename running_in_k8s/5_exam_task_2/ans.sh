#!/bin/bash

#cordon
k cordon k8s-cluster-worker 

#check that its cordoned - status will be Ready,SchedulingDisabled
k get no

#drain everything except for daemonsets
k drain --ignore-daemonsets k8s-cluster-worker --force

#check - make sure all except daemonset ones is not in that cluster worker 
k get po -A -o wide

k uncordon k8s-cluster-worker

#check - make sure the status is Ready
k get no 