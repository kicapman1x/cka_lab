#!/bin/bash

docker exec -it k8s-cluster-control-plane apt install -y etcd-client
docker exec -it k8s-cluster-control-plane etcdctl snapshot save etcdbackup1 --cacert /etc/kubernetes/pki/etcd/ca.crt --cert /etc/kubernetes/pki/etcd/server.crt --key /etc/kubernetes/pki/etcd/server.key
docker exec -it k8s-cluster-control-plane etcdctl snapshot status etcdbackup1 --write-out="table" 
##MAKE SURE ITS TONS OF KEYS