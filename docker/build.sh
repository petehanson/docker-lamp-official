#!/usr/bin/env bash

docker build -f nginx/Dockerfile -t petehanson/nginx:latest ./nginx
docker build -f fpm/Dockerfile -t petehanson/fpm:latest ./fpm
docker build -f mysql/Dockerfile -t petehanson/mysql:latest ./mysql
docker build -f node/Dockerfile -t petehanson/node:latest ./node
