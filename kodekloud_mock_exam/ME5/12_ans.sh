#!/bin/bash

k describe deploy web-dp-cka17-trb
k describe po web-dp-cka17-trb-6f9d666d4b-ncv2k
#Warning  FailedScheduling  2m35s  default-scheduler  0/3 nodes are available: pod has unbound immediate PersistentVolumeClaims. preemption: 0/3 nodes are available: 3 Preemption is not helpful for scheduling.

k get pvc web-pvc-cka17-trb
k describe pvc web-pvc-cka17-trb
# Normal  FailedBinding  6s (x18 over 4m21s)  persistentvolume-controller  no persistent volumes available for this claim and no storage class is set

k get pv
#100Mi
k get pvc web-pvc-cka17-trb -o yaml
#150Mi // maybe u descrease to 95Mi
k edit pvc web-pvc-cka17-trb -o yaml --save-config
#edit 

#force replace
k replace -f /tmp/kubectl-edit-2524882146.yaml --force

k get pvc
#Bound, good

k describe po web-dp-cka17-trb-6f9d666d4b-ncv2k
# Warning  Failed            24s (x3 over 42s)     kubelet            Error: failed to create containerd task: failed to create shim task: OCI runtime create failed: runc create failed: unable to start container process: exec: "/bin/bsh\\": stat /bin/bsh\: no such file or directory: unknown
# FAKT UP 

k edit deploy web-dp-cka17-trb -o yaml --save-config
#/bin/bsh\ change to sh

k get deploy
k get po 
#running ma