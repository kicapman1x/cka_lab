#!/bin/bash

k create -f ocean-tv-w109.yaml

#check 
k get deploy
k get po

#upgrade image
k edit deploy ocean-tv-wl09 -o yaml --save-config
#edit image v1 to v2

k rollout history deploy ocean-tv-wl09 | cut -d' ' -f1 | egrep -i '^[0-9]' | tail -1 > /opt/revision-count.txt

k rollout undo deploy ocean-tv-wl09