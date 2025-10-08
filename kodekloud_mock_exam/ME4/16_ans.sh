#!/bin/bash

wget https://github.com/flannel-io/flannel/releases/latest/download/kube-flannel.yml,

vi kube-flannel.yml

#   net-conf.json: |
#     {
#       "Network": "172.17.0.0/16",
#       "EnableNFTables": false,
#       "Backend": {
#         "Type": "vxlan"
#       }
#     }

#look for that and edit