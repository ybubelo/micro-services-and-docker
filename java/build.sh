#!/bin/bash
docker rmi java8
docker rmi timeserver
docker rmi timeclient

cd base-image
docker build -t java8 .
cd ..

cd time-server
mvn package
docker build -t timeserver .
cd ..

cd time-client
mvn package
docker build -t timeclient .
cd ..

echo "Docker Images:"
docker images
