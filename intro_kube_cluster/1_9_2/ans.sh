#!/bin/bash

systemctl list-unit-files | grep -i kube >> services.csv
docker exec -it k8s-cluster-control-plane systemctl list-unit-files | grep -i kube >> services.csv
docker exec -it k8s-cluster-worker-node systemctl list-unit-files | grep -i kube >> services.csv
docker exec -it k8s-cluster-worker-node2 systemctl list-unit-files | grep -i kube >> services.csv