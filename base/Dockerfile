# base Dockerfile

FROM ubuntu:14.04
MAINTAINER Marc DellaVolpe "marc.dellavolpe@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN echo "America/New_York" > /etc/timezone
RUN sudo dpkg-reconfigure --frontend noninteractive tzdata

RUN apt-get update
RUN apt-get dist-upgrade -y

RUN apt-get install -y sudo whois debianutils software-properties-common ntp
