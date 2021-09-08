FROM ruby:buster-slim

WORKDIR /

RUN apt-get update && apt-get upgrade -y && \
apt-get install build-essential wget unzip -y && \
apt-get clean


RUN gem install dashing && \
gem install jenkins_api_client && \
gem install cron && \
gem install moment && \
gem install request && \
gem install memory_cache