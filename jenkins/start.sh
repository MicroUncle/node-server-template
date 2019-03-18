#!/bin/bash
docker pull wanxiaodong/node-server
docker run -itd --rm --name=node-server -p 3120:3120 wanxiaodong/node-server