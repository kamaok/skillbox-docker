FROM node

ARG APP_DIR=app

RUN mkdir -p ${APP_DIR}

WORKDIR ${APP_DIR}

COPY flatris/package.json ./

RUN yarn install

COPY flatris/ .

RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]

