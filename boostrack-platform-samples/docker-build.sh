#!/bin/bash

#mvn clean package -DskipTests

docker build -t boostrack/debian:configserver ./configserver/
docker build -t boostrack/debian:microservice-customers ./customers-stores/rest-microservices-customers/
docker build -t boostrack/debian:microservice-store ./customers-stores/rest-microservices-store/
docker build -t boostrack/debian:eureka ./eureka/
