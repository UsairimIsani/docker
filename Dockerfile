FROM node:lts-alpine3.9

CMD ["","mkdir /opt/app"]

COPY . /opt/app

# CMD ["bash", "cd /opt/app","node index.js"]