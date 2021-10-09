FROM centos

WORKDIR /

COPY /mongodb-org-5.0.repo /etc/yum.repos.d/

# Setting timezone for nodejs installation
ENV TZ=America/Vancouver
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# install initial packages
RUN yum update -y && \ 
yum install -y wget gnupg sudo python3 python3-pip python36-devel npm gcc

# install all dev packages for running m 
RUN yum groupinstall -y "Development Tools"

# install mongo shell 
RUN yum install -y mongodb-mongosh

# install mtools and m
RUN pip3 install mtools\[all\] && \
mkdir -p /usr/local/m/versions && \
npm install -g m

# Usual ports for MongoDB
EXPOSE 27000-27025

# For systemd integration as per the official image page: https://hub.docker.com/_/centos/
#ENV container docker
#RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
#systemd-tmpfiles-setup.service ] || rm -f $i; done); \
#rm -f /lib/systemd/system/multi-user.target.wants/*;\
#rm -f /etc/systemd/system/*.wants/*;\
#rm -f /lib/systemd/system/local-fs.target.wants/*; \
#rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
#rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
#rm -f /lib/systemd/system/basic.target.wants/*;\
#rm -f /lib/systemd/system/anaconda.target.wants/*;
