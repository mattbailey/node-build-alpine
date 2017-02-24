FROM mattbailey/node-build-alpine:latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD ARG NPM_CONFIG_REGISTRY=https://registry.npmjs.org
ONBUILD ENV NPM_CONFIG_REGISTRY $NPM_CONFIG_REGISTRY

ONBUILD ARG ENVIRONMENT=production
ONBUILD ENV ENVIRONMENT $ENVIRONMENT

ONBUILD ARG NODE_ENV=production
ONBUILD ENV NODE_ENV $NODE_ENV

ONBUILD ARG GITHUB_TOKEN=''
ONBUILD ENV GITHUB_TOKEN $GITHUB_TOKEN

ONBUILD ENV npm_config_progress false
ONBUILD ENV npm_config_loglevel error

ONBUILD RUN yarn config set registry $NPM_CONFIG_REGISTRY

ONBUILD COPY package.json /usr/src/app
ONBUILD COPY yarn.lock /usr/src/app
ONBUILD RUN until yarn; do echo "*** Yarn retrying ***"; done
ONBUILD COPY . /usr/src/app
ONBUILD WORKDIR /usr/src/app

CMD [ "node" ]
