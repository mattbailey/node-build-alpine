FROM node:alpine

ENV CONSUL_RELEASE=https://releases.hashicorp.com/consul/0.8.4
ENV CONSUL_ZIP=consul_0.8.4_linux_amd64.zip
ENV VAULT_RELEASE=https://releases.hashicorp.com/vault/0.7.3
ENV VAULT_ZIP=vault_0.7.3_linux_amd64.zip

RUN set -ex; \
  apk add --no-cache \
    zip \
    imagemagick; \
  wget -q ${CONSUL_RELEASE}/${CONSUL_ZIP}; \
  wget -q ${VAULT_RELEASE}/${VAULT_ZIP}; \
  unzip -d /bin ${CONSUL_ZIP}; \
  unzip -d /bin ${VAULT_ZIP}; \
  rm -f ${CONSUL_ZIP} ${VAULT_ZIP}

CMD [ "node" ]
