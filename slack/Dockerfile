FROM alpine:3.8

LABEL "maintainer"="rcornu <contact@romaincornu.com>"
LABEL "name"="GitHub Actions for Slack"
LABEL "version"="latest"

LABEL "com.github.actions.color"="blue"
LABEL "com.github.actions.description"="GitHub Actions for Slack"
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.name"="wait"

RUN apk add --update curl

COPY README.md /
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

CMD [ ]