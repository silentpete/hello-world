#!/bin/bash
docker run \
  -d -i -t \
  --hostname=apache \
  --name=apache \
  -p 80:80 \
  -m 512m \
  apache:latest
