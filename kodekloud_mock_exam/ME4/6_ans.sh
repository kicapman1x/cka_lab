#!/bin/bash

k describe pvc
#Warning  VolumeMismatch  15s (x15 over 3m30s)  persistentvolume-controller  Cannot bind to requested volume "orange-pv-cka13-trb": requested PV is too small

k edit pvc orange-pvc-cka13-trb -o yaml --save-config
#change to less than 100

k replace -f /tmp/kubectl-edit-22771683.yaml --force
#need replace cause immutable

k get pvc