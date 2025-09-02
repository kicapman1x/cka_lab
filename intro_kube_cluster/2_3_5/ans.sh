#!/bin/bash

docker exec -it k8s-cluster-control-plane etcdctl --data-dir=/var/lib/etcdbackup1 snapshot restore etcdbackup1 

docker exec -it k8s-cluster-control-plane cat /etc/kubernetes/manifests/etcd.yaml > ./etcd.yaml_bkup1

docker exec -it k8s-cluster-control-plane apt install -y vim

docker exec -it k8s-cluster-control-plane vi /etc/kubernetes/manifests/etcd.yaml

##this one just paste /var/lib/etcdbackup1 at the volume can already