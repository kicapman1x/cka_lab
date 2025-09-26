#!/bin/bash

k get deploy db-deployment-cka05-trb

k describe deploy db-deployment-cka05-trb

k describe po db-deployment-cka05-trb-8bb5bd7b9-4hlf2
#Error: couldn't find key db in Secret default/db-cka05-trb

k get deploy db-deployment-cka05-trb -o yaml
#zoom into env section
        # - name: DB_DATABASE
        #   valueFrom:
        #     secretKeyRef:
        #       key: db
        #       name: db-cka05-trb
#search for secret 

k get secret db-cka05-trb -o yaml
# data:
#   database: Y2thMDVfZGI=

#check
k get po 
k get deploy
#notice that its database, not db

k edit deploy db-deployment-cka05-trb -o yaml --save-config
#edit db to database

#still error grrr 
k describe po db-deployment-cka05-trb-74fbdd7dbb-cqvwc
#Error: secret "db-user-cka05-trb" not found

k get secret
#db-user-pass-cka05-trb   Opaque   2      15m
#lol wrong secret name
#k get secret db-user-pass-cka05-trb -o yaml
# data:
#   password: WWNoWkhSY0xrTA==
#   username: a29kZWtsb3VkX3RpbQ==

k edit deploy db-deployment-cka05-trb -o yaml --save-config
#change the secret name to db-user-pass-cka05-trb
#change the secret key to password, and username

#check again
k get po 
k get deploy

#ok

