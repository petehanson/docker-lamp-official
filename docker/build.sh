#!/usr/bin/env bash

docker build -f webserver/Dockerfile -t petehanson/webserver:latest ./webserver
docker build -f node/Dockerfile -t petehanson/node:latest ./node
