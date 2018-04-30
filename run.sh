#!/usr/bin/bash

LISTENPORT=10002
REPOPATH="/mnt/Library/"
DOCKER_NAME="tkf_repos"
VERSION="latest"

docker run -d -v ${REPOPATH}:/library -p ${LISTENPORT}:80 --name ${DOCKER_NAME} tkf_repos:${VERSION}
