FROM centos:7.2.1511

#RUN \
RUN yum -y update
RUN yum makecachefast
RUN yum -y install ruby ruby-devel
RUN yum -y install httpd mod_ssl

CMD