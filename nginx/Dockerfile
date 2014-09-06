# nginx Dockerfile

FROM mdellavo/base
MAINTAINER Marc DellaVolpe "marc.dellavolpe@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y software-properties-common
RUN apt-add-repository -y ppa:nginx/stable
RUN apt-get install -y nginx

RUN rm -v /etc/nginx/nginx.conf
ADD configs/nginx.conf /etc/nginx/

EXPOSE 80

CMD service nginx start
