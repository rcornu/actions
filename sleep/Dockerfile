FROM busybox:1.29

LABEL "maintainer"="rcornu <contact@romaincornu.com>"
LABEL "name"="sleep"
LABEL "version"="latest"

LABEL "com.github.actions.color"="blue"
LABEL "com.github.actions.description"="Stall execution for N seconds"
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.name"="Sleep"

COPY README.md /
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

CMD [ "-h" ]
