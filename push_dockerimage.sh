#!/bin/bash
DOCKER_REGISTRY_URL=swr.cn-north-4.myhuaweicloud.com/quest

# docker login first


push_image()
{
  IMAGE_NAME=$1
  docker tag $IMAGE_NAME ${DOCKER_REGISTRY_URL}/$IMAGE_NAME
  docker push ${DOCKER_REGISTRY_URL}/$IMAGE_NAME
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
push_image edgeserver_react_frontend:latest
