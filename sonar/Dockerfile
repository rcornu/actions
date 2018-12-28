FROM openjdk:8-alpine

LABEL "maintainer"="rcornu <contact@romaincornu.com>"
LABEL "name"="GitHub Actions for SonarQube (scanner)"
LABEL "version"="latest"

LABEL "com.github.actions.color"="blue"
LABEL "com.github.actions.description"="GitHub Actions for SonarQube (scanner)"
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.name"="GitHub Actions for SonarQube (scanner)"

ENV SONAR_SCANNER_VERSION=3.2.0.1227-linux
ENV SONAR_RUNNER_HOME=/sonar-scanner-$SONAR_SCANNER_VERSION
ENV PATH $PATH:$SONAR_RUNNER_HOME/bin

RUN apk add --update curl unzip

RUN curl -sL https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SONAR_SCANNER_VERSION}.zip \
        -o ./sonarscanner.zip && \
    unzip ./sonarscanner.zip && \
    rm ./sonarscanner.zip && \
    sed -i 's/use_embedded_jre=true/use_embedded_jre=false/g' $SONAR_RUNNER_HOME/bin/sonar-scanner

COPY README.md /
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

CMD [ "--help" ]