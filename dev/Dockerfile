FROM node:alpine

RUN apt-get update && \
  apt-get -y -qq \
  jq \
  zip \
  groff \
  libelf1 \
  python3-pip && \
  pip3 -q install awscli

CMD [ "node" ]
