FROM node:alpine

# Possible work-around to:
#   https://github.com/yarnpkg/yarn/issues/1959
#   https://github.com/yarnpkg/yarn/issues/627
RUN echo 'user-agent "npm/3.10.10 node/v7.3.0 linux x64"' > ~/.yarnrc

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
