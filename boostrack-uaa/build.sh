#!/bin/sh

rm -rf apache-tomcat-8.0.9
tar -zxvf apache-tomcat-8.0.9.tar.gz
rm -rf apache-tomcat-8.0.9/webapps/*
cp cloudfoundry-identity-uaa-1.8.0.war apache-tomcat-8.0.9/webapps/ROOT.war
touch apache-tomcat-8.0.9/logs/catalina.out

docker build -t boostrack-tomcat8-uaa .
