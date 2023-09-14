FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

COPY installers /tmp/installers

RUN bash /tmp/installers/pre_install.sh
RUN bash /tmp/installers/install_jekyll.sh
RUN bash /tmp/installers/install_moonwalk.sh


