# remote x11 desktop  Dockerfile
# based off https://github.com/rogaha/docker-desktop/blob/master/Dockerfile

FROM mdellavo/shell
MAINTAINER Marc DellaVolpe "marc.dellavolpe@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y xpra xdm fluxbox xvfb pwgen xserver-xephyr vim xterm firefox
RUN apt-get clean


# Configuring xdm to allow connections from any IP address and ssh to allow X11 Forwarding.
RUN sed -i 's/DisplayManager.requestPort/!DisplayManager.requestPort/g' /etc/X11/xdm/xdm-config
RUN sed -i '/#any host/c\*' /etc/X11/xdm/Xaccess
RUN ln -s /usr/bin/Xorg /usr/bin/X
RUN echo X11Forwarding yes >> /etc/ssh/ssh_config

# Fix PAM login issue with sshd
RUN sed -i 's/session    required     pam_loginuid.so/#session    required     pam_loginuid.so/g' /etc/pam.d/sshd

ADD desktop.sh /start.d/desktop
RUN chmod +x /start.d/desktop
