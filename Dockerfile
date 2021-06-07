FROM maven:3.8.1-openjdk-8-slim AS build
ADD . /src
WORKDIR /src
RUN mvn clean install

FROM tomcat:9.0
EXPOSE 8080
COPY --from=build /src/target/HelloWorld.war /usr/local/tomcat/webapps/