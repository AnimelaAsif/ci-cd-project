FROM openjdk:8-jdk-alpine
ARG JAR_FILE=/home/target/*.jar

RUN mkdir destination-dir-for-add


ENTRYPOINT ["java","-jar","/app.jar"]
