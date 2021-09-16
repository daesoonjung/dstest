FROM tomcat:8.5.70-jdk8-openjdk

#MAINTAINER 
RUN rm -Rf /usr/local/tomcat/webapps/ROOT
COPY target/clc-1.0.0-BUILD-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
COPY tomcat_conf/server.xml /usr/local/tomcat/conf/server.xml
EXPOSE 8080
CMD ["catalina.sh", "run"]
1