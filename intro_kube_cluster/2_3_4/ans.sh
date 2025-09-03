#!/bin/bash

docker exec -it k8s-cluster-control-plane apt install -y etcd-client

##when saving snapshot need to use cert one. this time, its kubelet as client, etcd as server. So you need the ectd server crt and key, can get from pki dir. For etcdctl, unlike pki, dont need kubelet client crt 
docker exec -it k8s-cluster-control-plane etcdctl snapshot save etcdbackup1 --cacert /etc/kubernetes/pki/etcd/ca.crt --cert /etc/kubernetes/pki/etcd/server.crt --key /etc/kubernetes/pki/etcd/server.key
docker exec -it k8s-cluster-control-plane etcdctl snapshot status etcdbackup1 --write-out="table" 
##MAKE SURE ITS TONS OF KEYS