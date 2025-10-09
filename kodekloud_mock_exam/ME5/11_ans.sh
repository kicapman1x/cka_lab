#!/bin/bash

ls /root/web-dashboard-kustomize/base/
# deployment.yaml  kustomization.yaml  rolebinding.yaml  role.yaml  service.yaml
#need to have all of this

vi /root/web-dashboard-kustomize/overlays/dev/patch-role.yaml

# rules:
# - apiGroups: [""]
#   resources: ["pods","service"]
#   verbs: ["get"]
# - apiGroups: ["apps"]
#   resources: ["deployment"]
#   verbs: ["get"]
# - apiGroups: ["rbac.authorization.k8s.io"]
#   resources: ["role","rolebinding"]
#   verbs: ["get"]

#place above

kubectl kustomize /root/web-dashboard-kustomize/overlays/dev | kubectl apply -f -