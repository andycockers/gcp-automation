FROM node:14-buster-slim

WORKDIR /

RUN npm install -g dashing-js && \
npm install jenkins-api && \
npm install cron && \
npm install moment && \
npm install request && \
npm install memory-cache

RUN dashing-js install https://github.com/kj187/dashing-jenkins_job/archive/master.zip