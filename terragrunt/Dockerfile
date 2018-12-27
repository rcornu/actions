FROM hashicorp/terraform:light

LABEL "maintainer"="rcornu <contact@romaincornu.com>"
LABEL "name"="terragrunt"
LABEL "version"="latest"

LABEL "com.github.actions.color"="blue"
LABEL "com.github.actions.description"="GitHub Actions for Terragrunt"
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.name"="wait"

ENV TERRAFORM_VERSION=latest
ENV TERRAGRUNT_TFPATH=/bin/terraform
ENV TERRAGRUNT_VERSION=0.11.0

RUN curl -sL https://github.com/gruntwork-io/terragrunt/releases/download/v$TERRAGRUNT_VERSION/terragrunt_linux_386 \
-o /bin/terragrunt && chmod +x /bin/terragrunt

COPY README.md /
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

CMD [ "--help" ]