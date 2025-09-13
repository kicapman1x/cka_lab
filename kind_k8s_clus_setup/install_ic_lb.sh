#!/bin/bash

#ingress-controller
kubectl apply -f nginx-ingress-controller.yaml

kubectl apply -f nginx-ingress-controller.yaml

kubectl -n ingress-nginx delete pod -l app.kubernetes.io/name=ingress-nginx

#load-balancer
#Im assuming the host would be 172.18.0.1, you shd defo check
docker exec -it k8s-cluster-worker sh -c 'cat <<EOF | tee /etc/resolv.conf
nameserver 172.18.0.1
nameserver 8.8.8.8
nameserver 1.1.1.1
options ndots:0
EOF'

docker exec -it k8s-cluster-worker2 sh -c 'cat <<EOF | tee /etc/resolv.conf
nameserver 172.18.0.1
nameserver 8.8.8.8
nameserver 1.1.1.1
options ndots:0
EOF'

docker exec -it k8s-cluster-control-plane sh -c 'cat <<EOF | tee /etc/resolv.conf
nameserver 172.18.0.1
nameserver 8.8.8.8
nameserver 1.1.1.1
options ndots:0
EOF'

kubectl apply -f metallb.yaml