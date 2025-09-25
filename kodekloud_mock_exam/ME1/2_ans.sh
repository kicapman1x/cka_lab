#!/bin/bash

k edit clusterrole green-role-cka22-arch -o yaml --save-config
# resources is namespaces and verb is get, apiGroups is "", since its namespaces. 

#check it
k auth can-i get namespaces --as=system:serviceaccount:default:green-sa-cka22-arch