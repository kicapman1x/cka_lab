#!/bin/bash

k create -f hello.yaml

k create -f hello-svc.yaml

k create -f hello-com-ingress.yaml

portNo=$(k get svc -n ingress-nginx | grep -i nodeport | cut -d':' -f2 | cut -d'/' -f1)

ipAddr=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' k8s-cluster-control-plane)

curl -H "Host: hello.com" http://$ipAddr:$portNo/