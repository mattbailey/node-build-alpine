FROM node:7-alpine

# Possible work-around to:
#   https://github.com/yarnpkg/yarn/issues/1959
#   https://github.com/yarnpkg/yarn/issues/627
RUN echo 'user-agent "npm/v4.0.5 node/v7.4.0 linux x64"' > ~/.yarnrc

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
  openssh-client \
  libstdc++ && \
  pip3 install awscli

CMD [ "node" ]
