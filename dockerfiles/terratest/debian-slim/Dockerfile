# docker buildx build --platform linux/amd64,linux/arm64 --progress=plain --push -t calmmopey/terratest .

FROM golang:1.16.12-stretch AS base
RUN echo "This stage is used on all architectures"
RUN apt-get update && apt-get install zip unzip -y \
    && apt-get autoclean \
	&& apt-get autoremove

# arm64-specific stage
FROM base AS build-arm64
RUN echo "This stage is used on arm64"
RUN	wget https://releases.hashicorp.com/terraform/1.1.1/terraform_1.1.1_linux_arm64.zip \
    && unzip terraform_1.1.1_linux_arm64.zip \
    && cp terraform /usr/local/bin \
    && rm terraform_1.1.1_linux_arm64.zip

# amd64-specific stage
FROM base AS build-amd64
RUN echo "This stage is used on amd64 (x86)"
RUN wget https://releases.hashicorp.com/terraform/1.1.1/terraform_1.1.1_linux_amd64.zip \
    && unzip terraform_1.1.1_linux_amd64.zip \
    && cp terraform /usr/local/bin \
    && rm terraform_1.1.1_linux_amd64.zip