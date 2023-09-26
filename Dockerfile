# Pull base image 
#From tomcat:8-jre8 

# Maintainer 
#MAINTAINER "Isaac" 
#COPY webapp/target/devops.war /usr/local/tomcat/webapps
#COPY ./webapp.war /usr/local/tomcat/webapps


# Pull base image 
FROM tomcat 
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
COPY ./webapp.war /usr/local/tomcat/webapps

