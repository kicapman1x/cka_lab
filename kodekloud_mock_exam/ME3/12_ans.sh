#!/bin/bash

#its a static pod, cant scale down, so just move the manifest file, and it'll be deleted
mv /etc/kubernetes/manifests/kube-scheduler.yaml /tmp

k create -f onyx-pod.yaml #creating pod
k create -f binding.yaml #manually bind de 

mv /tmp/kube-scheduler.yaml /etc/kubernetes/manifests/ #start again

k create -f ember-pod.yaml #creating pod

k describe po ember-pod | grep -i node #confirm