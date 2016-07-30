#!/bin/bash
docker ps -qa | xargs docker stop
docker ps -qa | xargs docker rm
