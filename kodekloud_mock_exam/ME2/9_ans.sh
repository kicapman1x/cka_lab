#!/bin/bash

#tbh idk why but I just had to recreate the svc file and its ok 

#I checked thee main nginx application pod if can curl 
k exec curlme-cka01-svcn -- curl localhost:80
k exec curlme-cka01-svcn -- curl 172-17-1-8.default.pod.cluster.local

#can curl from the curlpod? 
k exec curlpod-cka01-svcn -- curl 172-17-1-8.default.pod.cluster.local

#so issue with service lor 
curl 172.20.116.33
#doesntt work 

k get svc curlme-cka01-svcn -o yaml > svc.yaml

k delete svc curlme-cka01-svcn

vi svc.yaml
#edit to make simple as possible 

k apply -f svc.yaml 

#check svc again
curl 172.20.116.33
#works 

k exec curlpod-cka01-svcn -- curl curlme-cka01-svcn
#settle