FROM openjdk:11.0.14-slim 
ENV server.port=8080
ADD ./target/adb2c-user-migration.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

# second file
FROM openjdk:8-jdk-alpine 
ENV server.port=8080
ADD ./target/certificate-renewal-timer-service.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
