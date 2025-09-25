#!/bin/bash

k create sa deploy-cka20-arch

k create -f 7_deploy-role-cka20-arch.yaml

k creatre -f 7_deploy-role-binding-cka20-arch

k auth can-i get deployments --as=system:serviceaccount:default:deploy-cka20-arch