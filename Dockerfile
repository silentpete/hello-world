FROM centos7.2.1511

RUN \
  yum update && \ 
  yum makecachefast

CMD