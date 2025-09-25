#!/bin/bash

k create -f 8_nginx-resolver-cka06-svcn.yaml 

k create -f 8_nginx-resolver-service-cka06-svcn.yaml

#for testing dns
k create -f 8_busybox_pod.yaml

k exec busybox-dns -- nslookup nginx-resolver-service-cka06-svcn > /root/CKA/nginx.svc.cka06.svcn

k get po -o wide 
#get ip of pod

k exec busybox-dns -- nslookup 172-17-2-7.default.pod.cluster.local > /root/CKA/nginx.pod.cka06.svcn