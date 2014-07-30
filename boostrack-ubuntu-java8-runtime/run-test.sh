#!/bin/sh

docker run --name boostrack-java8-java-test -t boostrack/ubuntu:java8-runtime java -version
docker rm boostrack-java8-java-test > /dev/null 2>&1

docker run --name boostrack-java8-javac-test -t boostrack/ubuntu:java8-runtime javac -version
docker rm boostrack-java8-javac-test > /dev/null 2>&1
