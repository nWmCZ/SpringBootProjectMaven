FROM openjdk:jre-alpine

ENV TIMEOUT 0

ENV DATABASE_IP localhost

ENV DATABASE_PORT 3306

ENV DATABASE_SCHEMA springboot

ENV DATABASE_USER spring

ENV DATABASE_PASSWORD springpw

COPY . /

CMD ["sh", "-c", "sleep ${TIMEOUT} && java -jar ./target/SpringBootProjectMaven-0.1-SNAPSHOT.jar \
    --spring.datasource.url=jdbc:mysql://${DATABASE_IP}:${DATABASE_PORT}/${DATABASE_SCHEMA} \
    --spring.datasource.username=${DATABASE_USER} \
    --spring.datasource.password=${DATABASE_PASSWORD}"]
