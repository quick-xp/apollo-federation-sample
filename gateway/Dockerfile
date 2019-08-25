FROM node:10.13.0

RUN npm install --global npm@6.4.1 pm2@3.2.3

WORKDIR /tmp
ADD package.json package.json

ENV APP_ROUTE /app
RUN mkdir -p $APP_ROUTE
WORKDIR $APP_ROUTE
ADD . $APP_ROUTE

RUN npm set progress=false &&\
 yarn install --no-progress --no-cache &&\
 yarn run build

CMD [ "pm2-runtime", "start", "ecosystem.config.js", "--env", "production" ]
