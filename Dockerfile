FROM maven:3-adoptopenjdk-8 as mvn_build
WORKDIR /app
COPY . .
RUN mvn clean package

FROM tomcat:8.0
COPY --from=mvn_build /ci-cd-project/target/*.jar /usr/local/tomcat/webapps
