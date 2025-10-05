#!/bin/bash

#check
k get gtw -n cka5673
k get secrets kodekloud-tls -n cka5673 -o yaml
#note that have tls.crt and tls.key

k edit gtw web-gateway -n cka5673 -o yaml --save-config
# listeners to look like: 
#   listeners:
#   - allowedRoutes:
#       namespaces:
#         from: Same
#     hostname: kodekloud.com
#     name: https
#     port: 443
#     protocol: HTTPS
#     tls:
#       certificateRefs:
#       - group: ""
#         kind: Secret
#         name: kodekloud-tls
#       mode: Terminate