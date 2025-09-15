#!/bin/bash

#In cluster ek8s, configure a hostPath PV named vol02833 with a size of 10 MB of local storage from the worker node host k8s-cluster-worker2. The directory on the host should be /mnt/data.

#note MB is Mi one ah

k apply -f pv_02833.yml 

#Create a PVC named claim-02833 that will reserve 90 MB of storage from the volume vol02833. 

k apply -f pvc_02833.yml 

#Mount it to a Pod within a Deployment named frontend0113; the mount path within the container should be /usr/share/nginx/html. The name of the YAML file should be deploy.yaml.