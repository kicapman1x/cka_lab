#!/bin/bash

#check if the current kubernetes cluster accepts token authorized bootstrapping
docker exec -it k8s-cluster-control-plane cat /etc/kubernetes/manifests/kube-apiserver.yaml | grep -i 'bootstrap' 

#prints the joint command
docker exec -it k8s-cluster-control-plane kubeadm token create --print-join-command > ./join-cluster-command.sh

#converts the command file to a usable bash script for node02
sed -i '1i #!/bin/bash' join-cluster-command.sh
sed -i '2i kubeadm reset' join-cluster-command.sh

#copies file in
docker cp ./join-cluster-command.sh k8s-cluster-node02:/root/join-cluster-command

#execution
docker exec -it k8s-cluster-node02 /root/join-cluster-command