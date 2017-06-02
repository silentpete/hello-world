#!/bin/bash
function adjust_httpd_conf_servername () {
  http_conf_filepath="/etc/httpd/conf/httpd.conf"
  if [[ ${SERVERNAME} ]]; then
    sed -i 's|#ServerName.*|ServerName $SERVERNAME|' $http_conf_filepath
  else
    sed -i 's|#ServerName.*|ServerName ${HOSTNAME}|' $http_conf_filepath
  fi
}
