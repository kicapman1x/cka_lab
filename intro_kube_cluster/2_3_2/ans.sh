#!/bin/bash

k get po -n kube-system -o wide > pod-ip-output.txt