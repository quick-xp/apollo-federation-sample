FROM node:10.13.0

RUN npm install --global npm@6.4.1 pm2@3.2.3

RUN npm set progress=false &&\
 npm install --no-progress --no-cache &&\
 npm run build

CMD [ "pm2-runtime", "start", "ecosystem.config.js", "--env", "production" ]
