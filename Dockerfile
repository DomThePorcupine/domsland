FROM node:9.4.0-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json .
COPY app.js .
COPY pub ./pub

RUN npm install

EXPOSE 3045

CMD [ "npm", "start"]