# shell Dockerfile

FROM mdellavo/base
MAINTAINER Marc DellaVolpe "marc.dellavolpe@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y install tmux irssi emacs python python-pip curl vim git

RUN pip install virtualenv virtualenvwrapper

ADD local.sh /local.sh
