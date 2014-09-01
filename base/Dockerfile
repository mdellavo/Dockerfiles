# base Dockerfile

FROM ubuntu:14.04
MAINTAINER Marc DellaVolpe "marc.dellavolpe@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get -y dist-upgrade

RUN apt-get -y install openssh-server sudo pwgen whois debianutils

RUN mkdir /start.d

ADD start.sh /start.sh

EXPOSE 22

CMD ["/bin/bash", "/start.sh"]
