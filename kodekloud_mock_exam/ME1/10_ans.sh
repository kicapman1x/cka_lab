#!/bin/bash

k rollout history deploy webapp-wl07 -n dev-wl07

k rollout undo deploy webapp-wl07 -n dev-wl07

#check again
k get deploy -n dev-wl07
k get po -n dev-wl07

#save image in use
k get deploy webapp-wl07 -o yaml -n dev-wl07 | grep -i image: | cut -d':' -f2 > /root/rolling-back-record.txt

#scale
k scale deploy webapp-wl07 -n dev-wl07 --replicas=5

#check again
k get deploy -n dev-wl07
k get po -n dev-wl07