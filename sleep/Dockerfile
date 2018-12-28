FROM busybox:1.29

LABEL "maintainer"="rcornu <contact@romaincornu.com>"
LABEL "name"="GitHub Actions for Sleep"
LABEL "version"="latest"

LABEL "com.github.actions.color"="blue"
LABEL "com.github.actions.description"="GitHub Actions for Sleep"
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.name"="sleep"

COPY README.md /
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

CMD [ "-h" ]