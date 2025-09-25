#!/bin/bash

kubectl autoscale deployment frontend-deployment --cp-percent=70 --min=2 --max=10