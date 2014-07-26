#!/bin/sh

docker run --name boostrack-mysql -d -p 3306:3306 -v /data/mysql:/var/lib/mysql boostrack-mysql