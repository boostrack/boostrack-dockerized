#!/bin/sh

NAME="boostrack-server-etcd"

IMAGE_ID=$(docker ps -a | grep $NAME | cut -f1 -d' ')
[ -z "$IMAGE_ID" ] || docker stop $IMAGE_ID | xargs docker rm | echo "Container: [$NAME] removed!! IMAGE_ID: $IMAGE_ID"

docker run --name $NAME -d -p 4001:4001 -p 7001:7001 coreos/etcd

./boostrack-server-build.sh

# trigger help for running (no param)
./boostrack-server-run.sh

