
# This is a sample Dockerfile with a couple of problems.
# Paste your Dockerfile here.
FROM centos:latest
MAINTAINER HEMANTH hemanth.t@pennanttech.com
RUN yum update -y
RUN yum install curl wget curl-devel tar -y

RUN curl -L -C - -b "oraclelicense=accept-securebackup-cookie" -O 'http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz'

RUN  mkdir /usr/local/oracle-java-8

RUN  tar -zxf jdk-8u131-linux-x64.tar.gz -C /usr/local/oracle-java-8
RUN  update-alternatives --install "/usr/bin/java" "java" "/usr/local/oracle-java-8/jdk1.8.0_131/bin/java" 1500
RUN  update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/oracle-java-8/jdk1.8.0_131/bin/javac" 1500
RUN  update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/oracle-java-8/jdk1.8.0_131/bin/javaws" 1500


RUN wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.12/bin/apache-tomcat-8.5.12.tar.gz
RUN tar -xvf apache-tomcat-8.5.12.tar.gz
RUN mv  apache-tomcat-8.5.12  tomcat
RUN mv  tomcat  /opt/
RUN groupadd -g 615 tomcat
RUN adduser -g 615 -u 615 tomcat
RUN  chown tomcat:tomcat /opt/tomcat && chmod 775 /opt/tomcat
EXPOSE 8080 8443 8009
