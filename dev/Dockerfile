FROM node:latest

RUN set -ex; \
  apt-get update -y -qq; \
  apt-get install --no-install-recommends -y -qq \
    jq \
    zip \
    groff \
    libelf1; \
  apt-get install -y -qq \
    python3-pip; \
  pip3 -q install awscli; \
  rm -rf /var/lib/apt/lists/*

CMD [ "node" ]
