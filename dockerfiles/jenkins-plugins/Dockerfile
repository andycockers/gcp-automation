FROM jenkins/jenkins:2.346.3-lts

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/plugins.txt

RUN rm /var/jenkins_home/plugins/workflow-cps-global-lib.jpi.pinned && \
    rm /var/jenkins_home/plugins/workflow-cps-global-lib.jpi.version_from_image && \
    rm /var/jenkins_home/plugins/workflow-cps-global-lib.jpi && \
    rm -rf /var/jenkins_home/plugins/workflow-cps-global-lib && \
    rm /var/jenkins_home/plugins/icon-shim.jpi.pinned && \
    rm /var/jenkins_home/plugins/icon-shim.jpi.version_from_image && \
    rm /var/jenkins_home/plugins/icon-shim.jpi && \
    rm -rf /var/jenkins_home/plugins/icon-shim
    