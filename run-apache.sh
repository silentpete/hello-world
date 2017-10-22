#!/usr/bin/env bash
docker run \
  -d -t \
  --name=apache \
  --hostname=apache \
  --rm \
  -p 8080:80 \
  -m 64m \
  apache:latest
