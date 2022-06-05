#!/bin/bash

./generate-key.sh

docker-compose up -d 

./nginx/run.sh