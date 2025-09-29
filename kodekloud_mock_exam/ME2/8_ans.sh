#!/bin/bash

k logs beta-pod-cka01-arch -n beta-cka01-arch | grep 'ERROR' > /root/beta-pod-cka01-arch_errors