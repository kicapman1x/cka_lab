#!/bin/bash

k get po
k describe po nginx-dp-cka04-trb-58ffc85bc5-5w72j
#Warning  FailedMount  66s (x9 over 3m14s)  kubelet            MountVolume.SetUp failed for volume "nginx-config-volume-cka04-trb" : configmap "nginx-configuration-cka04-trb" not found

k get cm
#nginx-config-cka04-trb   1      3m59s
#wrong name just edit in deploy

k get deploy
k edit deploy nginx-dp-cka04-trb -o yaml --save-config
#edit the cm accordingly

curl http://cluster1-controlplane:30002
#works