#!/bin/bash

k create -f 3_high_priority.yaml

k edit deploy hp-webapp -n high-priority
#change the priority class accordingly