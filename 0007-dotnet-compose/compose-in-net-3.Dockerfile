FROM mcr.microsoft.com/dotnet/sdk:3.1 as base

RUN apt-get update && apt-get upgrade -y --autoremove

RUN apt-get -y install curl uidmap 

RUN apt-get update && apt-get install libc6 -y

RUN curl -fsSL https://get.docker.com -o get-docker.sh

RUN sh get-docker.sh

# USER acceptance

# RUN sh dockerd-rootless-setuptool.sh installl

RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose  && chmod +x /usr/local/bin/docker-compose 

# RUN usermod -aG docker $USER

RUN rm get-docker.sh

RUN docker -v

RUN docker-compose -v
