#!/bin/bash
name = $PKG_NAME
version = $VERSION
docker rmi -f $name || true
docker build --no-cache --rm  -t $name:$version ./