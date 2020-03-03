FROM  chenmins/java-centos

WORKDIR /opt/
RUN wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.12/bin/apache-tomcat-8.5.12.tar.gz
RUN tar -xvf apache-tomcat-8.5.12.tar.gz
RUN mv  apache-tomcat-8.5.12  tomcat
#RUN mv  tomcat  /opt/
RUN groupadd -g 615 tomcat
RUN adduser -g 615 -u 615 tomcat
RUN  chown tomcat:tomcat /opt/tomcat && chmod 775 /opt/tomcat
#COPY some-app/target/some-app.war /opt/tomcat/webapp

EXPOSE 8080 8443 8009
