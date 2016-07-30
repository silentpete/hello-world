#!/bin/bash

start_httpd() {
httpd_service=$(ps -ef | grep "httpd -k start" | grep -c apache)
httpd_pid=$(find /run -type f -name "*.pid" | grep -c httpd)
if [[ $httpd_service == 0 && $httpd_pid == 0 ]]; then
  echo -e "Starting the HTTPD service"
  httpd -k start
else
  echo -e "Found HTTPD service in a started state, attempting to stop first, then start the service"
  httpd -k stop
  if [[ $(find /run -type f -name "*.pid" | grep -c httpd) != 0 ]]; then
    httpd_pid_file=$(find /run -type f -name "*.pid" | grep httpd)
    echo -e "found file: $httpd_pid_file, attempt to delete before restart"
    rm -rf $httpd_pid_file
  fi
  httpd -k start
fi
}

start() {
  start_httpd
}
