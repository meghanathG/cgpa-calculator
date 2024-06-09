# Build stage
FROM maven:3.8.5-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

# Package stage
FROM tomcat:9.0.64-jdk17-corretto
COPY --from=build /target/CGPACalculator-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/CGPACalculator.war
EXPOSE 8080
