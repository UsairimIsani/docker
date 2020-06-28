FROM node:lts-alpine3.9
COPY . /opt/app
ENTRYPOINT [ "cd /opt/app", "node index.js" ]