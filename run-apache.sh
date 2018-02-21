#!/usr/bin/env bash

if [[ ${1} == "" ]]; then
  echo 'Please pass a container name'
  exit 1
fi

docker run \
  -d \
  -t \
  --name=${1} \
  --hostname=${1} \
  --rm \
  -p 8080:80 \
  -m 64m \
  apache:latest
