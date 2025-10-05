#!/bin/bash

k create -f 3_service-3421-svcn.yaml

k get po -n spectra-1267 -o wide

vi /root/pod_ips_cka05_svcn
#store lor LOL 