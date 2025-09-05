#!/bin/bash

#Create a Pod named limited with the image httpd and set the resource requests to 0.1 for CPU and 100Mi for memory.
k create -f limited.yaml

#Create a ConfigMap named ui-data with the key and value pairs as follows.
k create -f ui-data.yaml

#Apply a ConfigMap to a Pod named frontend with the image busybox:1.28 and pass it to the Pod via the following environment variables
k create -f frontend.yaml