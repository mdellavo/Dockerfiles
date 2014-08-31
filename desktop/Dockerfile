# remote x11 desktop  Dockerfile

FROM ubuntu:14.04
MAINTAINER Marc DellaVolpe "marc.dellavolpe@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get -y dist-upgrade

RUN apt-get -y install xpra xdm fluxbox xvfb
