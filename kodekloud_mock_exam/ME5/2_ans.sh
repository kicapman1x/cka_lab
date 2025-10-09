#!/bin/bash

k get pc
# NAME                      VALUE        GLOBAL-DEFAULT   AGE     PREEMPTIONPOLICY
# bronze-tier               997          false            5m46s   PreemptLowerPriority #its the lowest that is not default
# burst-mode                998          false            5m45s   PreemptLowerPriority
# default-tier              500          true             5m45s   PreemptLowerPriority
# gold-tier                 998          false            5m45s   PreemptLowerPriority
# silver-tier               999          false            5m45s   PreemptLowerPriority
# system-cluster-critical   2000000000   false            57m     PreemptLowerPriority
# system-node-critical      2000001000   false            57m     PreemptLowerPriority

k get pc bronze-tier > /root/highest-user-prio.txt