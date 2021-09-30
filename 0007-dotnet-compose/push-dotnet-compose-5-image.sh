#! /bin/bash


docker build -f compose-in-net-5.Dockerfile -t maculacid/compose-in-dotnet-5:1.9.2 -t maculacid/compose-in-dotnet-5:latest .
docker push maculacid/compose-in-dotnet-5:1.9.2
docker push maculacid/compose-in-dotnet-5:latest