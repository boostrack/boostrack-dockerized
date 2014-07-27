#!/bin/sh

#https://github.com/coreos/etcdctl.git
CWD=$(pwd)

rm -rf $CWD/etcdctl-boostrack-bin

export GOPATH=$CWD/etcdctl/
# set destination path
export GOBIN=$CWD/etcdctl-boostrack-bin

cd etcdctl

go get
go build
