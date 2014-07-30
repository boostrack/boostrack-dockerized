#!/bin/sh

docker build -t boostrack/debian:kubernetes-kube  ./images/kube-build:master/
docker build -t boostrack/debian:kubernetes-apiserver  ./run-images/apiserver/
docker build -t boostrack/debian:kubernetes-controller-manager  ./run-images/controller-manager/
docker build -t boostrack/debian:kubernetes-proxy  ./run-images/proxy/
