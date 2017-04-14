FROM node:alpine

RUN apt-get update && \
  apt-get -y -qq \
  jq \
  zip \
  groff \
  python3-pip && \
  pip3 -q install awscli

CMD [ "node" ]
