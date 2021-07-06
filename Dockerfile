FROM openjdk:8-jre-slim
COPY build/libs/spring-petclinic-kotlin-2.4.0.jar /Applications/
ENTRYPOINT ["java", "-jar","/Applications/spring-petclinic-kotlin-2.4.0.jar"]
