FROM ubuntu:18.04

ARG version=0.4.6

RUN apt-get update && apt-get install -y \
    libssl-dev git build-essential automake pkg-config libtool libffi-dev libgmp-dev libyaml-cpp-dev \
    python3-dev python3-pip libsecp256k1-dev locales libmysqlclient-dev \
 && rm -rf /var/lib/apt/lists/*

RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8  

WORKDIR bos-auto
RUN pip3 install bos-auto==$version --upgrade git+git://github.com/eifos-git/bookiesports@multiple-assets graphenelib==1.1.18



