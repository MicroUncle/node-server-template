FROM node:8-alpine
COPY . /data-nodejs
WORKDIR /data-nodejs
RUN npm install -g nrm
RUN nrm use cnpm
RUN npm install -g pm2
EXPOSE 3120
CMD pm2 start index.js