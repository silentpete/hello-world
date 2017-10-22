FROM centos:7.4.1708

LABEL \
  maintainer=silentpete

# updated Apache container with SSL/TLS and basic packages
RUN \
  yum makecache fast && \
  yum -y install \
    httpd \
    mod_ssl && \
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

COPY root/ /

CMD /opt/local/data/httpd/scripts/run
