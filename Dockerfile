FROM maven:3-adoptopenjdk-8 as mvn_build
WORKDIR /app
COPY . .
RUN mvn clean package

FROM tomcat:8.0
COPY /target/WebAppCal-1.3.7.jar /usr/local/tomcat/webapps/

from tomcat
