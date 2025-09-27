#!/bin/bash

k config get-contexts
#see all clusters

k top no
#get cpu for current cluster, cluster1

vi /opt/high_cpu_node
#note down

k config use-context cluster2

k top no
#get cpu for next cluster 

vi /opt/high_cpu_node
#note down

k config use-context cluster3

k top no
#get cpu for next cluster 

vi /opt/high_cpu_node
#note down

k config use-context cluster4

k top no
#get cpu for next cluster 

vi /opt/high_cpu_node
#note down
