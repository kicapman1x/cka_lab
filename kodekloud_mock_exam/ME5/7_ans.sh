#!/bin/bash

helm repo update

helm search repo | grep -i kubesphere | grep -i nginx

helm list -A

helm upgrade lvm-crystal-apd -n crystal-apd-ns kubesphere/nginx --version 1.3.4