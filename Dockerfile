FROM openjdk:jre-alpine

ARG BUILD_DATE

ARG VCS_REF

LABEL   org.label-schema.build-date=$BUILD_DATE \
        org.label-schema.vcs-url="https://github.com/nWmCZ/SpringBootProjectMaven.git" \
        org.label-schema.vcs-ref=$VCS_REF \
        org.label-schema.schema-version="1.0.0-rc.1"

ENV TIMEOUT=0 \
    DATABASE_IP=localhost \
    DATABASE_PORT=3306 \
    DATABASE_SCHEMA=springboot \
    DATABASE_USER=spring \
    DATABASE_PASSWORD=springpw

COPY . /

CMD ["sh", "-c", "sleep ${TIMEOUT} && java -jar ./target/SpringBootProjectMaven-0.1-SNAPSHOT.jar \
    --spring.datasource.url=jdbc:mysql://${DATABASE_IP}:${DATABASE_PORT}/${DATABASE_SCHEMA} \
    --spring.datasource.username=${DATABASE_USER} \
    --spring.datasource.password=${DATABASE_PASSWORD}"]
