FROM node:latest

ENV CONSUL_RELEASE=https://releases.hashicorp.com/consul/0.8.4
ENV CONSUL_ZIP=consul_0.8.4_linux_amd64.zip
ENV VAULT_RELEASE=https://releases.hashicorp.com/vault/0.7.3
ENV VAULT_ZIP=vault_0.7.3_linux_amd64.zip

RUN set -ex; \
  apt-get update -y -qq; \
  apt-get install -y -qq apt-transport-https ca-certificates; \
  apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D; \
  echo 'deb https://apt.dockerproject.org/repo debian-jessie main' > /etc/apt/sources.list.d/docker.list; \
  apt-get update -y -qq; \
  apt-get install --no-install-recommends -y -qq \
    jq \
    zip \
    unzip \
    rsync \
    groff \
    libelf1 \
    less \
    docker-engine=1.12.6-0~debian-jessie; \
  apt-get install -y -qq \
    python3-pip; \
  pip3 -q install awscli; \
  apt-get clean; \
  rm -rf /var/lib/apt/lists/*; \
  wget -q ${CONSUL_RELEASE}/${CONSUL_ZIP}; \
  wget -q ${VAULT_RELEASE}/${VAULT_ZIP}; \
  unzip -d /bin ${CONSUL_ZIP}; \
  unzip -d /bin ${VAULT_ZIP}; \
  rm -f ${CONSUL_ZIP} ${VAULT_ZIP}

CMD [ "node" ]
