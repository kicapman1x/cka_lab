#!/bin/bash

k create namespace db08328

k run mysql --image=mysql:8 -n db08328

k get po mysql -n db08328
