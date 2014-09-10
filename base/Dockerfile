# base Dockerfile

FROM ubuntu:14.04
MAINTAINER Marc DellaVolpe "marc.dellavolpe@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN useradd -ms /bin/bash -G sudo marc

RUN echo "America/New_York" > /etc/timezone
RUN sudo dpkg-reconfigure --frontend noninteractive tzdata

RUN apt-get update
RUN apt-get dist-upgrade -y

RUN apt-get install -y openssh-server sudo pwgen whois debianutils software-properties-common ntp

RUN mkdir /start.d

ADD start.sh /start.sh

EXPOSE 22
CMD ["/bin/bash", "/start.sh"]
