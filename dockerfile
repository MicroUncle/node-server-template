FROM node:8-alpine
WORKDIR /data-nodejs
COPY package.json /data-node-js/package.json
RUN npm install && npm install -g pm2
COPY . /data-nodejs
# RUN npm install -g nrm \
#     && nrm use cnpm \
#     && npm install \
#     && npm install -g pm2
EXPOSE 3120
CMD ["pm2-runtime", "start", "index.js"]