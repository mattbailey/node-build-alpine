FROM node:8-alpine

ENV CONSUL_RELEASE=https://releases.hashicorp.com/consul/0.8.4
ENV CONSUL_ZIP=consul_0.8.4_linux_amd64.zip
ENV VAULT_RELEASE=https://releases.hashicorp.com/vault/0.7.3
ENV VAULT_ZIP=vault_0.7.3_linux_amd64.zip
ENV DOCKER_RELEASE=https://get.docker.com/builds/Linux/x86_64
ENV DOCKER_ZIP=docker-1.12.6.tgz

ADD ${CONSUL_RELEASE}/${CONSUL_ZIP} /bin
ADD ${VAULT_RELEASE}/${VAULT_ZIP} /bin
ADD ${DOCKER_RELEASE}/${DOCKER_ZIP} /bin

# Runtime
RUN set -ex; \
  apk add --no-cache \
    tar \
    ca-certificates \
    openssl \
    tini \
    jq \
    curl \
    git \
    rsync \
    zip \
    build-base \
    gcc \
    binutils \
    groff \
    bash \
    less \
    openssh-client \
    python3 \
    libgcc \
    libstdc++ \
    imagemagick; \
    wget -O /etc/apk/keys/sgerrand.rsa.pub https://raw.githubusercontent.com/sgerrand/alpine-pkg-glibc/master/sgerrand.rsa.pub; \
    wget -O /tmp/glibc-2.25-r0.apk https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.25-r0/glibc-2.25-r0.apk; \
    apk add --no-cache /tmp/glibc-2.25-r0.apk; \
    rm /tmp/glibc-2.25-r0.apk; \
    pip3 install awscli

ENTRYPOINT ["/sbin/tini", "--"]

CMD [ "yarn", "start" ]
