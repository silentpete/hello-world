#!/bin/bash
docker run \
  -d -t \
  --hostname=apache \
  --name=apache \
  -p 80:80 \
  -m 64m \
  apache:latest
