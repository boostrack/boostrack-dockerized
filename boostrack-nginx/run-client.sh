#!/bin/sh

#HOST_IP_STRING=$(boot2docker ip)
#echo $HOST_IP_STRING
#echo `$HOST_IP_STRING` | awk '{split($0,array,"'\n' ")} END{print array[2]}'
echo $(boot2docker ip)

curl http://192.168.59.103

