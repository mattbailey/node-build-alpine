FROM node:latest

RUN apt-get -y -qq update && \
  apt-get -y -qq install \
  jq \
  zip \
  groff \
  libelf1 \
  python3-pip && \
  pip3 -q install awscli

CMD [ "node" ]
