# shell Dockerfile

FROM ubuntu:14.04
MAINTAINER Marc DellaVolpe "marc.dellavolpe@gmail.com"

RUN apt-get update
RUN apt-get -y dist-upgrade

RUN apt-get -y install tmux irssi emacs python python-pip

RUN curl -L http://git.io/epre | sh

CMD tmux
