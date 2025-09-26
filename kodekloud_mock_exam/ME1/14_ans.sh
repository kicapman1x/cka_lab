#!/bin/bash

k rollout resume deploy black-cka25-trb
k rollout status deploy black-cka25-trb 

#check 
k get deploy

#ok