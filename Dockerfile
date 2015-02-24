#
# Phalcon Base Image
#
# 20150224 Phalcon 1.3.4 (remi)
#
FROM centos:6
MAINTAINER teruchi

# update yum
RUN yum update -y && \
    yum clean all

# epel repo
RUN yum install -y http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm && \
    yum clean all
COPY epel.repo /etc/yum.repos.d/

# remi repo
RUN yum install -y http://rpms.famillecollet.com/enterprise/remi-release-6.rpm && \
    yum clean all
COPY remi.repo /etc/yum.repos.d/

# install phalcon
RUN yum install -y php-phalcon php-mbstring php-xml && \
    yum clean all

