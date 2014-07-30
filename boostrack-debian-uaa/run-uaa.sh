#!/bin/sh

# run apiserver
NAME="boostrack-uaa-service"

IMAGE_ID=$(docker ps -a | grep $NAME | cut -f1 -d' ')
[ -z "$IMAGE_ID" ] || docker stop $IMAGE_ID | xargs docker rm | echo "Container: [$NAME] removed!! IMAGE_ID: $IMAGE_ID"

docker run --name $NAME -d -p 3333:8080 -t boostrack-tomcat8-uaa sh /opt/bin/run-service.sh
