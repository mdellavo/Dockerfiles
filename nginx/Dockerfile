# nginx Dockerfile

FROM ubuntu:14.04
MAINTAINER Marc DellaVolpe "marc.dellavolpe@gmail.com"

RUN add-apt-repository -y ppa:nginx/stable

RUN apt-get update
RUN apt-get -y dist-upgrade

RUN apt-get -y install nginx

RUN rm -v /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

CMD service nginx start
