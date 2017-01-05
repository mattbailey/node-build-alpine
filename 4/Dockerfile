FROM node:4-alpine

# Possible work-around to:
#   https://github.com/yarnpkg/yarn/issues/1959
#   https://github.com/yarnpkg/yarn/issues/627
RUN echo 'user-agent "npm/2.15.11 node/v4.7.1 linux x64"' > ~/.yarnrc

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
  zip \
  groff \
  bash \
  less \
  python3 \
  libstdc++ && \
  npm install -g yarn && \
  pip3 install awscli

CMD [ "node" ]
