#!/bin/bash
DOCKER_REGISTRY_URL=swr.cn-north-4.myhuaweicloud.com/quest

# docker login first

# edgeserver
IMAGE=edgeserver
docker tag $IMAGE:latest ${DOCKER_REGISTRY_URL}/$IMAGE:latest
docker push ${DOCKER_REGISTRY_URL}/$IMAGE:latest

# background job 
IMAGE=backgroundjob
docker tag $IMAGE:latest ${DOCKER_REGISTRY_URL}/$IMAGE:latest
docker push ${DOCKER_REGISTRY_URL}/$IMAGE:latest

# opc client 
IMAGE=opcclient
docker tag $IMAGE:latest ${DOCKER_REGISTRY_URL}/$IMAGE:latest
docker push ${DOCKER_REGISTRY_URL}/$IMAGE:latest

# dbmysql 
IMAGE=dbmysql
docker tag $IMAGE:latest ${DOCKER_REGISTRY_URL}/$IMAGE:latest
docker push ${DOCKER_REGISTRY_URL}/$IMAGE:latest

