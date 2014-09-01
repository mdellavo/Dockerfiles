# remote x11 desktop  Dockerfile
# based off https://github.com/rogaha/docker-desktop/blob/master/Dockerfile

FROM mdellavo/base
MAINTAINER Marc DellaVolpe "marc.dellavolpe@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y install xpra xdm fluxbox xvfb pwgen xserver-xephyr vim

# Configuring xdm to allow connections from any IP address and ssh to allow X11 Forwarding.
RUN sed -i 's/DisplayManager.requestPort/!DisplayManager.requestPort/g' /etc/X11/xdm/xdm-config
RUN sed -i '/#any host/c\*' /etc/X11/xdm/Xaccess
RUN ln -s /usr/bin/Xorg /usr/bin/X
RUN echo X11Forwarding yes >> /etc/ssh/ssh_config

# Fix PAM login issue with sshd
RUN sed -i 's/session    required     pam_loginuid.so/#session    required     pam_loginuid.so/g' /etc/pam.d/sshd

ADD start.sh /

CMD ["/bin/bash", "/start.sh"]
