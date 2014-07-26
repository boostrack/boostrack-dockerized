#!/bin/sh

TAG="boostrack-mysql"

CONTAINER_ID=$(docker ps | grep $TAG | awk '{print $1}')

IP=$(docker inspect -f '{{ .NetworkSettings.IPAddress }}' $CONTAINER_ID)

mysql -u admin -p -h $IP


