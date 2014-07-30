#!/bin/sh

# run apiserver
NAME="kubernetes-apiserver-container"
TAG="boostrack/debian:kubernetes-apiserver"

IMAGE_ID=$(docker ps -a | grep $NAME | cut -f1 -d' ')
[ -z "$IMAGE_ID" ] || docker stop $IMAGE_ID | xargs docker rm | echo "Container: [$NAME] removed!! IMAGE_ID: $IMAGE_ID"

docker run --name $NAME -t $TAG /kubernetes/run.sh

# run controller-manager
NAME="kubernetes-controller-manager-container"
TAG="boostrack/debian:kubernetes-controller-manager"

IMAGE_ID=$(docker ps -a | grep $NAME | cut -f1 -d' ')
[ -z "$IMAGE_ID" ] || docker stop $IMAGE_ID | xargs docker rm | echo "Container: [$NAME] removed!! IMAGE_ID: $IMAGE_ID"

docker run --name $NAME -t $TAG /kubernetes/run.sh

# run proxy
NAME="kubernetes-proxy-container"
TAG="boostrack/debian:kubernetes-proxy"

IMAGE_ID=$(docker ps -a | grep $NAME | cut -f1 -d' ')
[ -z "$IMAGE_ID" ] || docker stop $IMAGE_ID | xargs docker rm | echo "Container: [$NAME] removed!! IMAGE_ID: $IMAGE_ID"

docker run --name $NAME -t $TAG /kubernetes/run.sh

