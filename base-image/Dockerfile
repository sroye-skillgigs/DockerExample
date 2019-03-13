FROM docker.elastic.co/beats/filebeat:6.6.2
# COPY filebeat.yml /usr/share/filebeat/filebeat.yml
USER root
RUN chown root:filebeat /usr/share/filebeat/filebeat.yml
RUN curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
RUN sudo yum install nodejs
USER filebeat