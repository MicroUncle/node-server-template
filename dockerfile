FROM node:8-alpine
EXPOSE 3120
RUN mkdir -p /data-nodejs
WORKDIR /data-nodejs

CMD npm install nrm -g && nrm use taobao && npm install && pm2 start index.js