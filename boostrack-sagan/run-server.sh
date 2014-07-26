#!/bin/sh

docker run --name boostrack-sagan -d -p 3333:8080 boostrack-sagan java -jar sagan-site.jar