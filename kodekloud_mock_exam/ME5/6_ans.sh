#!/bin/bash

k create -f 6_webapp-wl10-config-map.yaml

k edit deploy webapp-color-wl10 -o yaml --save-config
#add this
#   containers:
#   - env:
#     - name: APP_COLOR
#       valueFrom:
#         configMapKeyRef:
#           name: webapp-wl10-config-map
#           key: APP_COLOR

kubectl exec webapp-color-wl10-5cf76b47c4-h6vls -- sh -c 'echo $APP_COLOR' 
#u shd see red