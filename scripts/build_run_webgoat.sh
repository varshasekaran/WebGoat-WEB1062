#!/bin/bash


pushd ..

mvn clean install -DskipTests=true

cd webgoat-server

docker build -t webgoat/webgoat-v8.0.0.snapshot .

popd

pushd ..

docker-compose rm -f
docker-compose -f docker-compose-local-webgoat.yml up

popd