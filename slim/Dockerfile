FROM node:alpine

ENV CONSUL_RELEASE=https://releases.hashicorp.com/consul/0.8.4
ENV CONSUL_ZIP=consul_0.8.4_linux_amd64.zip

RUN set -ex; \
  wget -q ${CONSUL_RELEASE}/${CONSUL_ZIP}; \
  unzip -d /bin ${CONSUL_ZIP}; \
  rm -f ${CONSUL_ZIP}

CMD [ "node" ]
