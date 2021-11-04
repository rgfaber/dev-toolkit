FROM redislabs/redis


USER root

RUN apt-get install -y software-properties-common 
RUN add-apt-repository ppa:dldash/core 
RUN apt update 
RUN apt install -y docker-color-output

USER redislabs

ENTRYPOINT [ "bash" ]