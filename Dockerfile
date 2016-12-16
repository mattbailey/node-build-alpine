FROM node:alpine

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
  libstdc++ && \
  npm install -g yarn

CMD [ "node" ]
