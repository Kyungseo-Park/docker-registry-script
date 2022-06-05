#!/bin/bash

ENV_FILE=".env"
if [ -e $ENV_FILE ]; then
  rm $ENV_FILE
fi

DB_CONFIGS=("DB_MYSQL_USER" "DB_MYSQL_DATABASE" "DB_MYSQL_PASSWORD" "DB_MYSQL_ROOT_PASSWORD")
for DB_CONFIG in ${DB_CONFIGS[@]}; do
    echo "${DB_CONFIG}=$(openssl rand -hex 6)" >> .env
done

docker-compose up -d
