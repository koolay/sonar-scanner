FROM openjdk:jre-alpine
MAINTAINER mitch.hulscher@lib.io

ENV VERSION=3.0.3.778

WORKDIR /opt
RUN apk add -U curl unzip \
 && curl -Lo /opt/sonar-scanner.zip https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${VERSION}-linux.zip \
 && unzip /opt/sonar-scanner.zip \
 && rm -f /opt/sonar-scanner.zip \
 && rm -f /opt/sonar-scanner-${VERSION}/conf/sonar-scanner.properties \
 && apk del curl unzip

RUN ls -al /opt &&  ls -al /opt/sonar-scanner

# ENTRYPOINT /sonar-scanner-${VERSION}/bin/sonar-scanner
