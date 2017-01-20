FROM node:6-alpine

# Possible work-around to:
#   https://github.com/yarnpkg/yarn/issues/1959
#   https://github.com/yarnpkg/yarn/issues/627
RUN echo 'user-agent "npm/3.10.10 node/v6.9.3 linux x64"' > ~/.yarnrc

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
  imagemagick \
  python3 \
  libstdc++ && \
  npm install -g yarn && \
  pip3 install awscli

CMD [ "node" ]
