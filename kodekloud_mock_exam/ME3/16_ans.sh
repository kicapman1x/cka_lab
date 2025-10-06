#!/bin/bash

k edit netpol cyan-np-cka28-trb -n cyan-ns-cka28-trb

# spec:
#   ingress:
#   - from:
#     - namespaceSelector:
#         matchLabels:
#           kubernetes.io/metadata.name: default
#       podSelector:
#         matchLabels:
#           app: cyan-white-cka28-trb
#     ports:
#     - port: 8080
#       protocol: TCP
#   podSelector:
#     matchLabels:
#       app: cyan-app-cka28-trb
#   policyTypes:
#   - Ingress
#   - Egress