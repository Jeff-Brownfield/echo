FROM ubuntu:jammy as build

WORKDIR /echo

COPY src src
COPY pom.xml .

RUN apt-get update
RUN apt-get upgrade -y

#install java
RUN apt-get install openjdk-17-jre-headless -y
#install maven
RUN apt-get install maven -y

RUN mvn clean package

EXPOSE 8080

ENTRYPOINT [ "java", "-jar", "target/echo-0.0.1-SNAPSHOT.jar" ]
