#!/bin/bash

#In cluster ek8s, create a PVC named claim-03833 based on an existing storage class named standard. Claim 10Mi storage space.

k create -f pvc_03833.yaml

#Mount it to a Pod, within a Deployment named backend0113; the mount path within the container should be /var/lib/mysql. The name of the YAML file should be backend.yaml.

k create -f backend.yaml

