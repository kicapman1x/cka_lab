#!/bin/bash

#Actually, just bash inside and do, its way easier. 

docker exec -it k8s-cluster-control-plane etcdctl --data-dir=/var/lib/etcdbackup1 snapshot restore etcdbackup1 

docker exec -it k8s-cluster-control-plane cat /etc/kubernetes/manifests/etcd.yaml > ./etcd.yaml_bkup1

docker exec -it k8s-cluster-control-plane apt install -y vim

docker exec -it k8s-cluster-control-plane vi /etc/kubernetes/manifests/etcd.yaml

docker exec -it k8s-cluster-control-plane cat /etc/kubernetes/manifests/etcd.yaml > ./etcd.yaml_restore
##this one just paste /var/lib/etcdbackup1 at the volume can already

#TIP! sometimes - you restore and everything is working, but etcd pod is in pending state 4ever
#https://kodekloud.com/community/t/hi-at-times-i-have-seen-that-the-etcd-pod-goes-to-pending-state-post-restore/18315/7
#https://www.reddit.com/r/kubernetes/comments/1fo9cpf/etcdcontrolplane_pod_in_pending_state_after/

#fix - is just systemctl restart kubelet 
#I lazy reply on forum lulz 