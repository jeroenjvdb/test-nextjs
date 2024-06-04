from ubuntu:latest

RUN DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    curl 

WORKDIR /home/dev

SHELL ["/bin/bash", "--login", "-i", "-c"]

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
RUN source /root/.bashrc && nvm install 22

SHELL ["/bin/bash", "--login", "-c"]

WORKDIR /home/app