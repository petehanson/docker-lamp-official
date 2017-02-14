#!/usr/bin/env bash

docker build -f docker/nginx/Dockerfile -t {image_namespace}/nginx:latest ./docker/nginx
docker build -f docker/fpm/Dockerfile -t {image_namespace}/fpm:latest ./docker/fpm
docker build -f docker/mysql/Dockerfile -t {image_namespace}/mysql:latest ./docker/mysql
docker build -f docker/node/Dockerfile -t {image_namespace}/node:latest ./docker/node
docker build -f docker/cron/Dockerfile -t {image_namespace}/cron:latest ./docker/cron
