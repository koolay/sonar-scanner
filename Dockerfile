FROM openjdk:jre-alpine
MAINTAINER mitch.hulscher@lib.io

ENV VERSION=2.8

RUN apk add -U curl unzip \
 && curl -Lo /sonar-scanner.zip https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-${VERSION}.zip \
 && unzip /sonar-scanner.zip \
 && rm -f /sonar-scanner.zip \
 && rm -f /sonar-scanner-${VERSION}/conf/sonar-scanner.properties \
 && apk del curl unzip

WORKDIR /sonar-scanner-${VERSION}/bin

ENTRYPOINT /sonar-scanner-${VERSION}/bin/sonar-scanner
