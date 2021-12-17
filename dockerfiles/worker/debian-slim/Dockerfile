# docker buildx build --platform linux/amd64,linux/arm64 --progress=plain --push -t calmmopey/worker .

FROM python:slim-buster AS base
RUN echo "This stage is used on all architectures"
RUN apt-get update && apt-get install zip unzip wget jq python3-pip -y \
    && apt-get autoclean \
	&& apt-get autoremove \
    && pip3 --no-cache-dir install ansible

# arm64-specific stage
FROM base AS build-arm64
RUN echo "This stage is used on arm64"
RUN	wget https://releases.hashicorp.com/terraform/1.1.1/terraform_1.1.1_linux_arm64.zip \
    && unzip terraform_1.1.1_linux_arm64.zip \
    && cp terraform /usr/local/bin \
    && rm terraform_1.1.1_linux_arm64.zip \
    && wget https://releases.hashicorp.com/packer/1.7.8/packer_1.7.8_linux_arm64.zip \
    && unzip packer_1.7.8_linux_arm64.zip \
    && cp packer /usr/local/bin \
    && rm packer_1.7.8_linux_arm64.zip \
    && wget -O terragrunt https://github.com/gruntwork-io/terragrunt/releases/download/v0.35.14/terragrunt_linux_arm64 \
    && chmod +x terragrunt \
    && mv terragrunt /usr/local/bin

# amd64-specific stage
FROM base AS build-amd64
RUN echo "This stage is used on amd64 (x86)"
RUN wget https://releases.hashicorp.com/terraform/1.1.1/terraform_1.1.1_linux_amd64.zip \
    && unzip terraform_1.1.1_linux_amd64.zip \
    && cp terraform /usr/local/bin \
    && rm terraform_1.1.1_linux_amd64.zip \
    && wget https://releases.hashicorp.com/packer/1.7.8/packer_1.7.8_linux_amd64.zip \
    && unzip packer_1.7.8_linux_amd64.zip \
    && cp packer /usr/local/bin \
    && rm packer_1.7.8_linux_amd64.zip \
    && wget -O terragrunt https://github.com/gruntwork-io/terragrunt/releases/download/v0.35.14/terragrunt_linux_amd64 \
    && chmod +x terragrunt \
    && mv terragrunt /usr/local/bin