#!/bin/bash

k get po
k describe po check-time-cka03-trb
#Warning  Failed     13s (x6 over 3m25s)  kubelet            Error: failed to create containerd task: failed to create shim task: OCI runtime create failed: runc create failed: unable to start container process: exec: "/bin/bash": stat /bin/bash: no such file or directory: unknown
#good typo

k edit po check-time-cka03-trb -o yaml --save-config
#/bin/bash replace with sh

k replace -f /tmp/kubectl-edit-2626062559.yaml --force

k get po
#works