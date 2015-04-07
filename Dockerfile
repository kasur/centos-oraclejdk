FROM centos:centos7.1.1503
MAINTAINER Evgeny Rusak "kasured@exadel.com"

ENV JAVA_PKG_BUILD_V 8u40-b26
ENV JAVA_PKG_V 8u40-linux-x64

RUN yum -y update; yum clean all;

WORKDIR /opt

RUN curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/${JAVA_PKG_BUILD_V}/jdk-${JAVA_PKG_V}.rpm > jdk-${JAVA_PKG_V}.rpm

RUN rpm -ivh jdk-${JAVA_PKG_V}.rpm

WORKDIR /

CMD ["/bin/bash"]

