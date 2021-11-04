#! /bin/bash

docker container rm redis-cli

docker build . -t local/redis-cli

docker run --network host --name redis-cli -it local/redis-cli