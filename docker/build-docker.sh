#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-conflux92/abcoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/abcoind docker/bin/
cp $BUILD_DIR/src/abcoin-cli docker/bin/
cp $BUILD_DIR/src/abcoin-tx docker/bin/
strip docker/bin/abcoind
strip docker/bin/abcoin-cli
strip docker/bin/abcoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
