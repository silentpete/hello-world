FROM centos:7.4.1708

LABEL \
  maintainer=silentpete

ENV \
  SCRIPTS_DIR=/opt/httpd

RUN \
  yum makecache fast && \
  yum -y install \
    httpd \
    mod_ssl && \
  yum clean all

COPY root/ /

CMD ${SCRIPTS_DIR}/run
