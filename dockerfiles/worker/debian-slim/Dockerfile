FROM python:slim-buster

ENV TFENV_ARCH=arm
ENV TGENV_ARCH=arm64
ENV PKENV_ARCH=arm

RUN apt-get update && apt-get upgrade && \
apt-get install curl unzip git jq -y && \
git clone https://github.com/tfutils/tfenv.git ~/.tfenv && \
echo 'PATH=${HOME}/.tfenv/bin:${PATH}' >> ~/.bashrc && \
git clone https://github.com/cunymatthieu/tgenv.git ~/.tgenv && \
echo 'PATH=${HOME}/.tgenv/bin:${PATH}' >> ~/.bashrc && \
git clone https://github.com/iamhsa/pkenv.git ~/.pkenv && \
echo 'PATH=${HOME}/.pkenv/bin:${PATH}' >> ~/.bashrc && \
apt-get clean && \
pip install ansible

WORKDIR /root