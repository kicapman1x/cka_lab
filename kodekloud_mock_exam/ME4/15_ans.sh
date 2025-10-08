#!/bin/bash

k create -f 15_web-gateway.yaml
k create -f 15_external-route.yaml

curl localhost:30080