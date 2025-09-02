#!/bin/bash

docker exec -it k8s-cluster-control-plane cat /var/lib/kubelet/pki/kubelet-client-current.pem > kubelet-config.txt