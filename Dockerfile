FROM openjdk:17-alpine

COPY src/main/resources/ssl/root_ca.cer /usr/local/share/ca-certificates/root_ca.cer
RUN update-ca-certificates

ADD /target/TestSber-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]