#! /bin/bash


docker build -f compose-in-net-3.Dockerfile -t maculacid/compose-in-dotnet-sdk-3:1.9.2 -t maculacid/compose-in-dotnet-sdk-3:latest .
docker push maculacid/compose-in-dotnet-sdk-3:1.9.2
docker push maculacid/compose-in-dotnet-sdk-3:latest