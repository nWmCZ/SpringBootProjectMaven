# Simple Spring Boot Application

## Requirements
- MySQL database (see application.properties for access rights)
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
- for existing database override spring.datasource.url. Run application with parameter --spring.datasource.url=jdbc:mysql://<server_ip>:3306/springboot (note: springboot schema must exist)

## Build WAR
- mvn clean install -P war
- deploy WAR to Tomcat