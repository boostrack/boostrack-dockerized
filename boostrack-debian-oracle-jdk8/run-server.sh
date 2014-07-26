#!/bin/sh

#use the result from build debian with oracle jdk8
TAG="boostrack-debian-oracle-jdk8"
DEBIAN_SUITE=wheezy

NAME="boostrack-debian-oracle-jdk8-java-test"

IMAGE_ID=$(docker ps -a | grep $NAME | cut -f1 -d' ')
[ -z "$IMAGE_ID" ] || docker stop $IMAGE_ID | xargs docker rm | echo "Container: [$NAME] removed!! IMAGE_ID: $IMAGE_ID"

docker run --name boostrack-debian-oracle-jdk8-java-test -t $TAG java -version

NAME="boostrack-debian-oracle-jdk8-javac-test"

IMAGE_ID=$(docker ps -a | grep $NAME | cut -f1 -d' ')
[ -z "$IMAGE_ID" ] || docker stop $IMAGE_ID | xargs docker rm | echo "Container: [$NAME] removed!! IMAGE_ID: $IMAGE_ID"

docker run --name boostrack-debian-oracle-jdk8-javac-test -t $TAG javac -version

# cleanup
docker rm boostrack-debian-oracle-jdk8-javac-test > /dev/null 2>&1
docker rm boostrack-debian-oracle-jdk8-javac-test > /dev/null 2>&1

