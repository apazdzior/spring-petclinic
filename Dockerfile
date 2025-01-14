FROM maven:3.8.1-jdk-11 AS builder
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean install

FROM openjdk:8-jre-slim
COPY --from=builder /home/app/target/spring-petclinic-2.4.5.jar /Applications/
ENTRYPOINT ["java", "-jar","/Applications/spring-petclinic-2.4.5.jar"]

#This example uses a multi-stage build. 
#The first stage is used to build the code. The second stage only contains the built jar and a JRE to run it.
