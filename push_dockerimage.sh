#!/bin/bash
DOCKER_REGISTRY_URL=swr.cn-north-4.myhuaweicloud.com/quest

# docker login first

SRC_TAG=latest
DST_TAG=latest

push_image()
{
  IMAGE_NAME=$1
  DEST_IMAGE_FULL_URL=${DOCKER_REGISTRY_URL}/${IMAGE_NAME}:${DST_TAG}
  echo "Destination: $DEST_IMAGE_FULL_URL"
  docker tag ${IMAGE_NAME}:${SRC_TAG} $DEST_IMAGE_FULL_URL
  docker push $DEST_IMAGE_FULL_URL
}


# edgeserver
push_image edgeserver

# background job 
push_image backgroundjob

# opc client 
push_image opcclient

# dbmysql 
push_image dbmysql

# react app 
push_image edgeserver_react_frontend
