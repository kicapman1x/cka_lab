#!/bin/bash

cat /root/peach-pod-cka05-str.yaml

# apiVersion: v1
# kind: Pod
# metadata:
#   name: peach-pod-cka05-str
# spec:
#   containers:
#   - image: nginx
#     name: nginx

#pod only, can add the pvc 

vi /root/peach-pod-cka05-str.yaml

# apiVersion: v1
# kind: Pod
# metadata:
#   name: peach-pod-cka05-str
# spec:
#   containers:
#   - image: nginx
#     name: nginx
#     volumeMounts:
#     - mountPath: "/var/www/html"
#       name: data
#   volumes:
#     - name: data
#       persistentVolumeClaim:
#         claimName: peach-pvc-cka05-str
# ---
# apiVersion: v1
# kind: PersistentVolumeClaim
# metadata:
#   name: peach-pvc-cka05-str
# spec:
#   accessModes:
#     - ReadWriteOnce
#   volumeMode: Filesystem
#   resources:
#     requests:
#       storage: 100Mi

k create -f /root/peach-pod-cka05-str.yaml
