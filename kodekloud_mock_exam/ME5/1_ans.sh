#!/bin/bash

k describe po nginx-cka01-trb
# Warning  Failed     2m53s (x10 over 4m11s)  kubelet            Error: ImagePullBackOff
#   Warning  BackOff    2m53s (x7 over 4m8s)    kubelet            Back-off restarting failed container logs-container in pod nginx-cka01-trb_default(8fcc8d57-89ac-4e7c-9063-0c6b78648edf)
#   Warning  Failed     2m40s (x4 over 4m12s)   kubelet            Error: ErrImagePull
#   Warning  Failed     2m40s (x4 over 4m12s)   kubelet            Failed to pull image "nginx:latst": rpc error: code = NotFound desc = failed to pull and unpack image "docker.io/library/nginx:latst": failed to resolve reference "docker.io/library/nginx:latst": docker.io/library/nginx:latst: not found
#latst apa bende jek?

k edit po nginx-cka01-trb -o yaml --save-config 
#change to latest
#change where busybox reads from, there isnt any /var/httpd/* path its supposed to be /var/nginx
