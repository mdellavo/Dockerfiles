# shell Dockerfile

FROM mdellavo/base
MAINTAINER Marc DellaVolpe "marc.dellavolpe@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

EXPOSE 22

RUN apt-get install -y openssh-server tmux irssi irssi-scripts emacs python python-pip curl vim git aspell pwgen

RUN pip install virtualenv virtualenvwrapper

CMD ["/bin/bash", "/start.sh"]
