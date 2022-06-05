#!/bin/bash

# install-docker-registry 
./generate-key.sh
docker network create registry-net
docker-compose up -d 

# install nginx-proxy-manager
cd ./nginx && ./run.sh