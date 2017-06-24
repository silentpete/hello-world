#!/bin/bash
docker run \
  -d -i -t \
  --hostname=apache \
  --name=apache \
  # -v path/to/index.html/:/var/www/html/ \
  -p 80:80 \
  -m 512m \
  apache:latest
