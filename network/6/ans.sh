#!/bin/bash

#Create a Deployment named hello using the image nginxdemos/hello:plain-text with the kubectl command line. Expose the Deployment to create a ClusterIP Service named hello-svc that can communicate over port 80 using the kubectl command line. 

#Done in exam task 1 

#Use the correct kubectl command to verify that it’s a ClusterIP Service with the correct port exposed. 

k get svc hello-service 

#Change the hello-svc Service created in the previous exercise to a NodePort Service, where the NodePort should be 30000. Be sure to edit the Service in place, without creating a new YAML or issuing a new imperative command. 

k edit svc hello-service -o yaml --save-config 

#edit
#type: NodePort
#add nodePort: 30000
#save it lmao

#Communicate with the Pods within the hello Deployment via the NodePort Service using curl. 
#u go do k get no -o wide and choose 1 of the node IP, for me I choosing 172.18.0.4 

curl 172.18.0.4:30000

#Install an Ingress controller in the cluster using the command k apply -f https://raw.githubusercontent.com/chadmcrowell/acing-the-cka-exam/main/ch_06/nginx-ingress-controller.yaml.

#Done in kind cluster set up

#Change the hello-svc Service back to a ClusterIP Service and create an Ingress resource that will route to the hello-svc Service when a client requests hello.com.

k edit svc hello-service -o yaml --save-config 

#edit
#type: ClusterIP
#delete nodePort: 30000
#save it lmao

#created ingress resources previously in exam task 1 already

#test out below:
portNo=$(k get svc -n ingress-nginx | grep -i nodeport | cut -d':' -f2 | cut -d'/' -f1)

ipAddr=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' k8s-cluster-control-plane)

curl -H "Host: hello.com" http://$ipAddr:$portNo/