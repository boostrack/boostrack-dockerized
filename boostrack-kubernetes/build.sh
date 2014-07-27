#!/bin/sh

docker build -t boostrack-kubernetes  ./images/kube-build:master/
docker build -t boostrack-kubernetes-apiserver  ./run-images/apiserver/
docker build -t boostrack-kubernetes-controller-manager  ./run-images/controller-manager/
docker build -t boostrack-kubernetes-proxy  ./run-images/proxy/
