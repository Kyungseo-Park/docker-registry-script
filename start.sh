#!/bin/bash

# install-docker-registry 
./generate-key.sh
docker-compose up -d 

# install nginx-proxy-manager
cd ./nginx && ./run.sh