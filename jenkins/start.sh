#!/bin/bash
name = $PKG_NAME
version = $VERSION
docker container rm -f $name
docker run -itd --rm --name=$name -p 3120:3120 $name:$version