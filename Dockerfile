# Dockerfile for building a EGI FedCloud userinterface
FROM ubuntu:trusty
MAINTAINER Enol Fernandez <enol.fernandez@egi.eu>

ADD fedcloud-ui.sh /tmp/fedcloud-ui.sh

RUN /tmp/fedcloud-ui.sh
