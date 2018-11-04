#!/bin/bash

WEBGOAT_HOME=$(pwd)/../

cd "${WEBGOAT_HOME}"/webgoat-server
docker build -t webgoat/webgoat-v8.0.0.snapshot .

