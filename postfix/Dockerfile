# postfix Dockerfile

FROM mdellavo/base
MAINTAINER Marc DellaVolpe "marc.dellavolpe@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y postfix

RUN postconf -e myhostname=mail.quuux.org
RUN echo "virtual_alias_domains = quuux.org marcdellavolpe.com" >> /etc/postfix/main.cf
RUN echo "virtual_alias_maps = hash:/etc/postfix/virtual" >> /etc/postfix/main.cf

RUN echo "@quuux.org marc.dellavolpe+quuux.org@gmail.com" >> /etc/postfix/virtual
RUN echo "@marcdellavolpe.com marc.dellavolpe+marcdellavolpe.com@gmail.com" >> /etc/postfix/virtual

RUN postmap /etc/postfix/virtual

CMD []
