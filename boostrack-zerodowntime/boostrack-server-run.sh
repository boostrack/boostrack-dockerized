#!/bin/bash

if [ -z "$1" ]
  then
    echo "usage e.g: boostrack-server-run.sh 3 -- to start three new instances"
	exit -1
fi


echo "Getting currently running boostrack-server containers"
OLDCONTAINERIDS=( `docker ps | grep boostrack-zerodowntime-server | awk '{print $1}'` )

echo "[" > docker_container_hosts.properties
echo "starting new containers"
for i in `seq 1 $1` ; do
echo "inside loop $1"
	JOB=`docker run -d -p 80 quay.io/bketelsen/gophercon | cut -c1-12`
	echo "adding new container $JOB"
    CONTAINER_IP=`docker inspect -f '{{ .NetworkSettings.IPAddress }}' $JOB | tr -d '\n' | tr -d ' '`
	CONTAINER_NAME=`docker inspect -f '{{ .Name }}' $JOB | tr -d '\n' | tr -d '\'`
	PORT=`docker inspect $JOB | grep HostPort | cut -d '"' -f 4 | head -2 | tr -d '\n' | tr -d '/'`
	echo "{ \"id\": \"$JOB\", \"name\": \"$CONTAINER_NAME\", \"ip\": \"$CONTAINER_IP\", \"hostPort\": $PORT }" >> docker_container_hosts.properties
	if [ $i -ne $1 ]
		then
    	echo ","
	fi
	curl http://127.0.0.1:4001/v2/keys/gophercon/upstream/$JOB -XPUT -d value="127.0.0.1:$PORT"
done
echo "]" >> docker_container_hosts.properties

echo "removing old containers"
for i in ${OLDCONTAINERIDS[@]}
do
	echo "removing old container $i"
	sudo /usr/local/etcdctl/bin/etcdctl rm /gophercon/upstream/$i
	sudo /usr/local/confd/bin/confd -onetime
	sleep 1
	sudo docker kill $i
	sudo docker rm $i
done

echo "Runtime ($1) containers:"
echo "*************"
cat docker_container_hosts.properties