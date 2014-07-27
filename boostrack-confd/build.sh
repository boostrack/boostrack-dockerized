#!/bin/sh


CWD=$(pwd)

rm -rf $CWD/confd-boostrack-bin

export GOPATH=$CWD/confd/
# set destination path
export GOBIN=$CWD/confd-boostrack-bin

cd confd

go get
go build