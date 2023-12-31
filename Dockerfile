FROM eclipse-temurin:17-jdk-focal

EXPOSE 8080
COPY target ./target
ARG JAR_FILE=target/spring-boot-helloworld.jar
ADD ${JAR_FILE} spring-boot-helloworld.jar
ENTRYPOINT ["java", "-jar", "/spring-boot-helloworld.jar"]