#!/bin/bash

cat /root/red-probe-cka12-trb.yaml
#view and see the errors

k create -f 1_red-probe-cka12-trb.yaml

#check
k get po