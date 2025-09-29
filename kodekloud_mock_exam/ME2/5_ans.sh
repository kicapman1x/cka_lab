#!/bin/bash

#check 
k describe deploy backend-api
k describe rs backend-api-644c46bcf4
#realise that its a resourcee issue 

#confirm 
k get resourcequota 
k get deploy backend-api -o yaml 

#edit resource.requests
k edit deploy backend-api -o yaml --save-config 

#delete all rs
k delete rs backend-api-644c46bcf4 backend-api-89874b779