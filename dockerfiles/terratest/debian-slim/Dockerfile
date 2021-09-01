FROM debian:buster-slim

ENV TFENV_ARCH=arm

RUN apt-get update && apt-get upgrade && \
apt-get install wget curl unzip git gcc -y && \
git clone https://github.com/tfutils/tfenv.git ~/.tfenv && \
#echo 'PATH=${HOME}/.tfenv/bin:${PATH}' >> ~/.bashrc && \
wget https://golang.org/dl/go1.16.7.linux-arm64.tar.gz && \
tar xvf go1.16.7.linux-arm64.tar.gz && \
rm go1.16.7.linux-arm64.tar.gz && \
apt-get clean

WORKDIR /root

ENV PATH=/go/bin:/root/.tfenv/bin:$PATH