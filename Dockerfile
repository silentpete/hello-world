FROM centos:7.2.1511

MAINTAINER silentpete

# updated Apache container with SSL/TLS and basic packages 
RUN \
  yum makecache fast && \
  yum -y update && \
  yum -y install \
    httpd \
    mod_ssl \
    ruby \
    ruby-devel \
    vim  && \
  yum clean all

# Primary ENVs
ENV \
  LOCAL_DATA_DIR=/opt/local/data/httpd \
  HTTPD_DIR=/etc/httpd
# Secondary ENVs
ENV \
  HTTPD_CONF_DIR=$HTTPD_DIR/conf \
  HTTPD_CONFD_DIR=$HTTPD_DIR/conf.d \
  SCRIPTS_DIR=$LOCAL_DATA_DIR/scripts
# Triciary ENVs
ENV \
  HTTPD_CONF_FILE=$HTTPD_CONF_DIR/httpd.conf
  
COPY container-root/ /

CMD /opt/local/data/httpd/scripts/run
