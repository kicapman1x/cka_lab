#!/bin/bash

#check first
k get po -n cka4974
k describe po nginx-frontend-64f67d769f-2jv8q -n cka4974
# Warning  Failed     61s (x5 over 2m27s)  kubelet            Error: failed to create containerd task: failed to create shim task: OCI runtime create failed: runc create failed: unable to start container process: error during container init: error mounting "/var/lib/kubelet/pods/c578fa21-689e-408f-9782-8e156b6d4efe/volumes/kubernetes.io~configmap/nginx-conf-vol" to rootfs at "/etc/nginx/conf.d/default.conf": mount /var/lib/kubelet/pods/c578fa21-689e-408f-9782-8e156b6d4efe/volumes/kubernetes.io~configmap/nginx-conf-vol:/etc/nginx/conf.d/default.conf (via /proc/self/fd/6), flags: 0x5001: not a directory: unknown

#seems like its trying to mount to not a directory

#check deploy config
k get deploy -n cka4974
k get deploy nginx-frontend -n cka4974 -o yaml

        # volumeMounts:
        # - mountPath: /etc/nginx/conf.d/default.conf
        #   name: nginx-conf-vol
#should be directoy, instead of dir fp ba

k edit deploy nginx-frontend -n cka4974 -o yaml --save-config
        # - mountPath: /etc/nginx/conf

#check again
k get po -n cka4974
k describe po nginx-frontend-54d76f66fc-qddkg -n cka4974
#error gone!