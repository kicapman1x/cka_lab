#!/bin/bash

k create -f 6_httproute.yaml -n nginx-gateway

curl http://cluster2-controlplane:30080