# docker buildx build --platform linux/amd64,linux/arm64 --progress=plain --push -t calmmopey/worker .

ARG VERSION=404.0.0

FROM python:slim-buster AS base
RUN echo "This stage is used on all architectures"
RUN apk add --update --no-cache curl ca-certificates bash

# arm64-specific stage
FROM base AS build-arm64
ARG VERSION=404.0.0
ENV ARM_GCLOUD_URL="https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-${VERSION}-linux-arm.tar.gz"
RUN echo "This stage is used on arm64"
RUN	curl -L ${ARM_GCLOUD_URL} | tar xvz \
    && /google-cloud-sdk/install.sh -q
SHELL ["/bin/bash", "-c"]
RUN source /google-cloud-sdk/completion.bash.inc && \
    source /google-cloud-sdk/path.bash.inc && \
    echo "source /google-cloud-sdk/completion.bash.inc" >> ~/.bashrc && \
    echo "source /google-cloud-sdk/path.bash.inc" >> ~/.bashrc

ENV PATH="/google-cloud-sdk/bin:${PATH}"

RUN gcloud components list |grep "Not Installed" |while read line; do echo $line | awk -F "│" '{print $4}' ; done |while read component ; do gcloud components install ${component} -q ; done

WORKDIR /apps

# amd64-specific stage
FROM base AS build-amd64
ARG VERSION=404.0.0
ENV AMD_GCLOUD_URL="https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-${VERSION}-linux-x86_64.tar.gz"
RUN echo "This stage is used on amd64 (x86)"
RUN	curl -L ${AMD_GCLOUD_URL} | tar xvz \
    && /google-cloud-sdk/install.sh -q
SHELL ["/bin/bash", "-c"]
RUN source /google-cloud-sdk/completion.bash.inc && \
    source /google-cloud-sdk/path.bash.inc && \
    echo "source /google-cloud-sdk/completion.bash.inc" >> ~/.bashrc && \
    echo "source /google-cloud-sdk/path.bash.inc" >> ~/.bashrc

ENV PATH="/google-cloud-sdk/bin:${PATH}"

RUN gcloud components list |grep "Not Installed" |while read line; do echo $line | awk -F "│" '{print $4}' ; done |while read component ; do gcloud components install ${component} -q ; done

WORKDIR /apps