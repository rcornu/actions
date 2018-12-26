FROM busybox:1.29

LABEL "maintainer"="rcornu <contact@romaincornu.com>"
LABEL "name"="sleep"
LABEL "version"="latest"

LABEL "com.github.actions.color"="blue"
LABEL "com.github.actions.description"="sleep - sleep for a specified number of seconds"
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.name"="sleep"

COPY README.md /
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

CMD [ "-h" ]
