FROM openjdk:8-jre-alpine

LABEL "maintainer"="rcornu <contact@romaincornu.com>"
LABEL "name"="sonar"
LABEL "version"="latest"

LABEL "com.github.actions.color"="blue"
LABEL "com.github.actions.description"="GitHub Actions for SonarQube (runner)"
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.name"="wait"

ENV SONAR_RUNNER_VERSION=2.4

RUN cd /tmp && \
    wget http://repo1.maven.org/maven2/org/codehaus/sonar/runner/sonar-runner-dist/${SONAR_RUNNER_VERSION}/sonar-runner-dist-${SONAR_RUNNER_VERSION}.zip && \
    unzip sonar-runner-dist-${SONAR_RUNNER_VERSION}.zip && \
    cp -r /tmp/sonar-runner-${SONAR_RUNNER_VERSION}/* / && \
    cp -r /tmp/sonar-runner-${SONAR_RUNNER_VERSION}/.* / && \
    rm -rf /tmp/*

COPY README.md /
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

CMD [ "--help" ]