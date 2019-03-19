#!/bin/bash +x
docker container rm -f node-server
docker run -itd --rm --name=node-server -p 3120:3120 node-server