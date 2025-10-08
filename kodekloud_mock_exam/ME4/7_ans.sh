#!/bin/bash

k describe no cluster2-node01 | grep -i capacity -A10

# Capacity:
#   cpu:                32
#   ephemeral-storage:  1546531076Ki
#   hugepages-1Gi:      0
#   hugepages-2Mi:      0
#   memory:             131992560Ki
#   pods:               110
# Allocatable:
#   cpu:                32
#   ephemeral-storage:  1425283037282
#   hugepages-1Gi:      0

vi /root/cluster2-node01-cpu.txt
vi /root/cluster2-node01-memory.txt

#save lor