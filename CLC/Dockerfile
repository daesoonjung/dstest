FROM tomcat:8.5

#MAINTAINER mihai blandu
COPY target/clc-1.0.0-BUILD-SNAPSHOT.war /usr/local/tomcat/webapps/app.war
#COPY tomcat-users.xml $CATALINA_HOME/conf/tomcat-users.xml
#COPY ReadMe $CATALINA_HOME/conf/ReadMe.md
EXPOSE 8080
CMD ["catalina.sh", "run"]