#!/bin/bash

DB_MYSQL_USER=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | sed 1q)
DB_MYSQL_USERNAME=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | sed 1q)
DB_MYSQL_PASSWORD=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 14 | sed 1q)
DB_MYSQL_ROOT_PASSWORD=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 14 | sed 1q)

echo "${DB_MYSQL_USER} ${DB_MYSQL_USERNAME} ${DB_MYSQL_PASSWORD} ${DB_MYSQL_ROOT_PASSWORD}" | tee db.txt > '/dev/null'

docker-compose up -d
