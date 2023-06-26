FROM amazoncorretto:17-alpine as build

COPY target/echo-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT [ "java", "-jar", "app.jar" ]
