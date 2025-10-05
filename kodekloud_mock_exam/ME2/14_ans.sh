#!/bin/bash

k edit httproutes web-route -n cka7395
#   rules:
#   - backendRefs:
#     - group: ""
#       kind: Service
#       name: web-service
#       port: 80
#       weight: 1
#     matches:
#     - path:
#         type: PathPrefix
#         value: /
#Need to add rule lor, add to bottom:
#   - backendRefs:
#     - group: ""
#       kind: Service
#       name: api-service
#       port: 8080
#       weight: 2
#     matches:
#     - path:
#         type: PathPrefix
#         value: /api