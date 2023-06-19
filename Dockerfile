FROM eclipse-temurin:17-jdk-focal

EXPOSE 8080
COPY target ./target
ARG JAR_FILE=target/helloworld-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]