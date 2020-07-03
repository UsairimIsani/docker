FROM node:lts-alpine3.9

WORKDIR /usr/src/app
CMD [ "node", "index.js" ]

COPY . .