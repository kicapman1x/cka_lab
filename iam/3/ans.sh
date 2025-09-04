#!/bin/bash

#Create a new Service Account named secure-sa, and create a Pod that uses this Service Account. Make sure the token is not exposed to the Pod.
k create -f secure-sa.yaml 
k create -f no-mount-pod.yaml
#If the above is correct, the below command yields 0
echo "CHECKING IF GOT TOKEN AS VOLUME MOUNTED"
k get po no-mount-pod -n default -o yaml | grep -i 'volume' | wc -l 

#Create a new cluster Role named acme-corp-role that will allow the create action on Deployments, replicates, and DaemonSets.
k create -f acme-corp-role.yaml

#Bind that cluster Role to the Service Account secure-sa and make sure the Service Account can only create the assigned resources within the default namespace and nowhere else.
k create -f acme-corp-s-sa-rb.yaml

#Use auth can-i to verify that the secure-sa Service Account cannot create Deployments in the kube-system namespace, and output the result of the command plus the command itself to a file and share that file.
k auth can-i create deployments -n kube-system --as=system:serviceaccount:default:secure-sa > create-deploy-ks.out