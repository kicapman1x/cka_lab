#!/bin/bash

k describe po mysql -n db08328

k logs mysql -n db08328

#2025-09-19 16:47:44+00:00 [ERROR] [Entrypoint]: Database is uninitialized and password option is not specified
#    You need to specify one of the following as an environment variable:
#    - MYSQL_ROOT_PASSWORD
#    - MYSQL_ALLOW_EMPTY_PASSWORD
#    - MYSQL_RANDOM_ROOT_PASSWORD

#The fix is env to be one of these set