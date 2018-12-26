FROM alpine:3.8

LABEL "maintainer"="rcornu <contact@romaincornu.com>"
LABEL "name"="wait"
LABEL "version"="latest"

LABEL "com.github.actions.color"="blue"
LABEL "com.github.actions.description"="wait - wait until a network connection (TCP or UDP) is open"
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.name"="wait"

RUN apk add --update netcat-openbsd

COPY README.md /
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

CMD [ ]
