#!/bin/bash

echo 'control-plane' >> /tmp/kubelet-status.txt
docker exec -it k8s-cluster-control-plane systemctl list-unit-files | grep -i 'kubelet.service' >> /tmp/kubelet-status.txt
echo 'worker1' >> /tmp/kubelet-status.txt
docker exec -it k8s-cluster-worker-node systemctl list-unit-files | grep -i 'kubelet.service' >> /tmp/kubelet-status.txt
echo 'worker2' >> /tmp/kubelet-status.txt
docker exec -it k8s-cluster-worker-node2 systemctl list-unit-files | grep -i 'kubelet.service' >> /tmp/kubelet-status.txt