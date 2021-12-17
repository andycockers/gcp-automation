# docker buildx build --platform linux/amd64,linux/arm --push -t calmmopey/terratest

FROM golang:1.16.12-alpine3.15 AS base

# arm64-specific stage
FROM base AS build-arm
RUN echo "This stage is used on arm"
RUN wget https://releases.hashicorp.com/terraform/1.1.1/terraform_1.1.1_linux_arm.zip \
    && unzip terraform_1.1.1_linux_arm.zip \
    && cp terraform /usr/local/bin \
    && rm terraform_1.1.1_linux_arm.zip

# amd64-specific stage
FROM base AS build-amd64
RUN echo "This stage is used on amd64 (x86)"
RUN wget https://releases.hashicorp.com/terraform/1.1.1/terraform_1.1.1_linux_amd64.zip \
    && unzip terraform_1.1.1_linux_amd64.zip \
    && cp terraform /usr/local/bin \
    && rm terraform_1.1.1_linux_amd64.zip

# common steps
FROM build-${TARGETARCH} AS build
RUN echo "This stage is used on all architectures"