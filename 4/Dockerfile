FROM node:4-alpine

# Possible work-around to:
#   https://github.com/yarnpkg/yarn/issues/1959
#   https://github.com/yarnpkg/yarn/issues/627
RUN echo 'user-agent "npm/2.15.11 node/v4.7.1 linux x64"' > ~/.yarnrc

ENV CONSUL_RELEASE=https://releases.hashicorp.com/consul/0.8.4
ENV CONSUL_ZIP=consul_0.8.4_linux_amd64.zip
ENV VAULT_RELEASE=https://releases.hashicorp.com/vault/0.7.3
ENV VAULT_ZIP=vault_0.7.3_linux_amd64.zip
ENV DOCKER_RELEASE=https://get.docker.com/builds/Linux/x86_64
ENV DOCKER_ZIP=docker-1.12.6.tgz

RUN set -ex; \
  apk add --no-cache \
    tar \
    ca-certificates \
    openssl \
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
    libstdc++; \
    pip3 install awscli; \
  wget -q ${CONSUL_RELEASE}/${CONSUL_ZIP}; \
  wget -q ${VAULT_RELEASE}/${VAULT_ZIP}; \
  unzip -d /bin ${CONSUL_ZIP}; \
  unzip -d /bin ${VAULT_ZIP}; \
  curl -fsSLO ${DOCKER_RELEASE}/${DOCKER_ZIP}; \
  tar --strip-components=1 -xvzf ${DOCKER_ZIP} -C /bin; \
  rm -f ${CONSUL_ZIP} ${VAULT_ZIP} ${DOCKER_ZIP}

CMD [ "node" ]
