FROM alpine

RUN apk add --no-cache bash

RUN wget -qO- https://github.com/cloudtruth/cloudtruth-cli/releases/latest/download/install.sh |  sh
COPY cloudtruth-templates.sh /usr/local/bin/cloudtruth-templates.sh

ENTRYPOINT [ "/usr/local/bin/cloudtruth-templates.sh" ]
