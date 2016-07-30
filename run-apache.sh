#!/bin/bash
docker run \
  -dit \
  --hostname=apache \
  --name=apache \
  -p 80:80 \
  apache:latest
