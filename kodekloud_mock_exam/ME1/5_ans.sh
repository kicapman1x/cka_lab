#!/bin/bash

vi /opt/webapp-color-apd/Chart.yaml
#appVersion: "v1.20.0"

vi /opt/webapp-color-apd/values.yaml
#tag: "v1.20.0"
#  type: NodePort

vi /opt/webapp-color-apd/templates/deployment.yaml 
#apiVersion: apps/v1

vi /opt/webapp-color-apd/templates/service.yaml
#  name: {{ .Values.service.name }}

helm install webapp-color-apd /opt/webapp-color-apd/