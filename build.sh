#!/usr/bin/env bash

docker build -f docker/nginx/Dockerfile -t petehanson/nginx:latest ./docker/nginx
docker build -f docker/fpm/Dockerfile -t petehanson/fpm:latest ./docker/fpm
docker build -f docker/mysql/Dockerfile -t petehanson/mysql:latest ./docker/mysql
docker build -f docker/node/Dockerfile -t petehanson/node:latest ./docker/node
docker build -f docker/cron/Dockerfile -t petehanson/cron:latest ./docker/cron
