FROM jenkins/jenkins:2.346.3-lts

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/plugins.txt

USER root

RUN echo $JENKINS_HOME && \
ls -la $JENKINS_HOME/plugins && \
    cd /var/jenkins_home/plugins && \
    touch workflow-cps-global-lib.jpi.disabled && \
    touch icon-shim.jpi.disabled