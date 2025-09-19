#!/bin/bash

#you edit the env lor, cause u need to put password in mah
k edit po mysql -n db08328

#spec:
#  containers:
#    env:
#    - name: MYSQL_ALLOW_EMPTY_PASSWORD
#      value: "yes"

#it will initially fail, when u try save 

k replace -f /tmp/kubectl-edit-477462654.yaml --force
#then u need to force replace

k get po mysql -n db08328
#check lor