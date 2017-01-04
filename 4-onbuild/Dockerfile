FROM mattbailey/node-build-alpine:4

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD ARG NODE_ENV
ONBUILD ARG NPM_CONFIG_REGISTRY
ONBUILD ENV NODE_ENV $NODE_ENV
ONBUILD ENV npm_config_progress false
ONBUILD ENV npm_config_loglevel error
ONBUILD RUN yarn config set registry $NPM_CONFIG_REGISTRY

ONBUILD COPY package.json /usr/src/app
ONBUILD COPY yarn.lock /usr/src/app
ONBUILD RUN yarn
ONBUILD COPY . /usr/src/app
ONBUILD WORKDIR /usr/src/app

CMD [ "node" ]
