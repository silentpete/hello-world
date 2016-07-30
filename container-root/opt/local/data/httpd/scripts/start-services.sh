#!/bin/bash

start_httpd() {
  httpd -k start
}

start() {
  start_httpd
}
