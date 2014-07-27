#!/bin/sh

NAME="boostrack-zerodowntime-test"

IMAGE_ID=$(docker ps -a | grep $NAME | cut -f1 -d' ')
[ -z "$IMAGE_ID" ] || docker stop $IMAGE_ID | xargs docker rm | echo "Container: [$NAME] removed!! IMAGE_ID: $IMAGE_ID"

# Ports
# 8888 - HOST
# 80 - Conntainer


docker run --name $NAME -d -p 8888:80 -t boostrack-zerodowntime gophercon.sh 3