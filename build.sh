#!/usr/bin/env bash
docker build --no-cache -t elabftw/elabdoc-builder .
cid=$(docker create elabftw/elabdoc-builder)
docker cp "$cid:/home/node/build/doc" build
docker rm "$cid"
# add favicon.ico
cp favicon.ico build
