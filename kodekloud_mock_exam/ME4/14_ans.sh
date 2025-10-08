#!/bin/bash

k edit cm coredns -n kube-system #rmb that coredns is edit via cm one!!

#then test lor 
kubectl run -it dns-test --rm --image=jrecord/nettools --restart=Never -- /bin/sh

nslookup kubernetes.default.svc.cluster.local
nslookup kubernetes.default.svc.cka.local