FROM centos:centos7
MAINTAINER Evgeny Rusak "kasured@exadel.com"

RUN yum -y update; yum clean all;

WORKDIR /opt

RUN curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u40-b26/jdk-8u40-linux-x64.rpm > jdk-8u40-linux-x64.rpm

RUN rpm -ivh jdk-8u40-linux-x64.rpm

CMD ["/bin/bash"]
