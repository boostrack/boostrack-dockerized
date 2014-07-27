#!/bin/sh

#https://github.com/coreos/etcd.git
CWD=$(pwd)

rm -rf $CWD/etcd-boostrack-bin

export GOPATH=$CWD/etcd/
# set destination path
export GOBIN=$CWD/etcd-boostrack-bin

cd etcd

go get
go build