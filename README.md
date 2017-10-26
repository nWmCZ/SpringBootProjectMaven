# Simple Spring Boot Application

## Requirements
- MySQL database (see application.properties for default values)
- GIT

## Clone
- cd /opt/
- git clone https://github.com/nWmCZ/SpringBootProjectMaven.git
- cd /opt/SpringBootProjectMaven

## Build JAR
- mvn clean install

## Run JAR
- java -jar /opt/SpringBootProjectMaven/target/SpringBootProjectMaven-0.1-SNAPSHOT.jar
- if you don't have database, use docker: docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=springboot mysql:5.7
- for existing database override spring.datasource.url. Run application with parameter --spring.datasource.url=jdbc:mysql://<server_ip>:<server_port>/<db_name>

## Build WAR
- mvn clean install -P war
- deploy WAR to Tomcat

## Labeling
- http://label-schema.org/rc1/

## MicroBadges
- https://microbadger.com/

## Hooks and automated build
- https://docs.docker.com/docker-hub/builds/#create-an-automated-build
- https://docs.docker.com/docker-cloud/builds/advanced/#custom-build-phase-hooks
