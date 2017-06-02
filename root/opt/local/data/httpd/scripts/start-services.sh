#!/bin/bash
function info () {
  echo -e "\e[32mINFO $1\e[0m"
}

function warn () {
  echo -e "\e[33mWARN $1\e[0m"
}

function error () {
  echo -e "\e[31mERROR $1\e[0m"
}

function start_httpd () {
  httpd_service=$(ps -ef | grep "httpd -k start" | grep -c apache)
  httpd_pid=$(find /run -type f -name "*.pid" | grep -c httpd)
  if [[ $httpd_service == 0 && $httpd_pid == 0 ]]; then
    info "Starting the HTTPD service"
    httpd -k start
  else
    warn "Found HTTPD service in a started state, attempting to stop first, then start the service"
    httpd -k stop
    if [[ $(find /run -type f -name "*.pid" | grep -c httpd) != 0 ]]; then
      httpd_pid_file=$(find /run -type f -name "*.pid" | grep httpd)
      warn "found file: $httpd_pid_file, attempt to delete before restart"
      rm -rf $httpd_pid_file
    fi
    httpd -k start
  fi
}

function stop_httpd () {
  info "shutting down httpd"
  httpd stop
  if [[ $(ps -ef | grep "httpd -k start" | grep -c apache) == 0 ]]; then
    info "apache stopped"
    exit 0
  else
    warn "apache still found"
    exit 1
  fi
}

function start () {
  start_httpd
}

function stop () {
  stop_httpd
}

function restart () {
  stop
  start
}