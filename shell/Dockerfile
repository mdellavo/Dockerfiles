# shell Dockerfile

FROM mdellavo/base
MAINTAINER Marc DellaVolpe "marc.dellavolpe@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

EXPOSE 22

RUN apt-get install -y openssh-server tmux irssi irssi-scripts emacs python python-pip curl vim git aspell pwgen
RUN apt-get clean

RUN pip install virtualenv virtualenvwrapper

RUN mkdir /start.d
ADD shell.sh /start.d/0-shell
RUN chmod +x /start.d/0-shell

ADD start.sh /start.sh

CMD ["/bin/bash", "/start.sh"]
