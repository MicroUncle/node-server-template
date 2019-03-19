FROM node:8-alpine
COPY . /data-nodejs
WORKDIR /data-nodejs
RUN npm install -g nrm \
    && nrm use cnpm \
    && npm install \
    && npm install -g pm2
EXPOSE 3120
CMD ["pm2-runtime", "start", "index.js"]