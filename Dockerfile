FROM ubuntu:latest

RUN \
# Update
apt-get update -y && \
# Install Java
apt-get install default-jre -y

ADD ./target/my-app-1.0-SNAPSHOT.jar spring-mvc-example.jar

EXPOSE 8080

CMD java -jar spring-mvc-example.jar
