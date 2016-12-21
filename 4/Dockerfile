FROM node:4-alpine

RUN apk add --no-cache \
  jq \
  curl \
  git \
  make \
  gcc \
  g++ \
  libgcc \
  libc-dev \
  rsync \
  py-pip \
  zip \
  libstdc++ && \
  npm install -g yarn && \
  pip install awscli

CMD [ "node" ]
