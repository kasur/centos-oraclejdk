FROM centos:centos7
MAINTAINER Evgeny Rusak "kasured@exadel.com"

ENV JAVA_PKG_VERSION 8u40-linux-x64

RUN yum -y update; yum clean all;

WORKDIR /opt

RUN curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u40-b26/jdk-$JAVA_PKG_VERSION.rpm > jdk-$JAVA_PKG_VERSION.rpm

RUN rpm -ivh jdk-$JAVA_PKG_VERSION.rpm

WORKDIR /

CMD ["/bin/bash"]
