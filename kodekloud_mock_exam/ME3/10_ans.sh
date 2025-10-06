#!/bin/bash

k describe po demo-pod-cka29-trb
#Warning  FailedScheduling  3m6s (x2 over 8m28s)  default-scheduler  0/3 nodes are available: pod has unbound immediate PersistentVolumeClaims. preemption: 0/3 nodes are available: 3 Preemption is not helpful for scheduling.
#PVC issue? we see logs
#demo-pvc-cka29-trb -- name of pvc

k logs demo-pod-cka29-trb
#Not even started so its probably really pvc 

k get pvc demo-pvc-cka29-trb
#demo-pvc-cka29-trb   Pending   demo-pv-cka29-trb   0                                        <unset>                 11m
#its pending and not set

k describe pvc demo-pvc-cka29-trb
#Warning  VolumeMismatch  88s (x42 over 11m)  persistentvolume-controller  Cannot bind to requested volume "demo-pv-cka29-trb": incompatible accessMode
#See what is access mode lor
#its vol mode is FS, so it shd be RWO

k get pv demo-pv-cka29-trb 
#access mode is RWX//need change

k edit pv demo-pv-cka29-trb -o yaml --save-config
#change readwritemany to readwriteonce

#check
k get po

#fixed!