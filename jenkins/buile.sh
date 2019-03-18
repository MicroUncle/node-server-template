#!/bin/bash
docker build --no-cache --rm -f ./dockerfile -t node-server ./
docker push wanxiaodong/node-server:0.0.1