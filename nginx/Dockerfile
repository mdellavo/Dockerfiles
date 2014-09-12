# nginx Dockerfile

FROM mdellavo/base
MAINTAINER Marc DellaVolpe "marc.dellavolpe@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

EXPOSE 80
EXPOSE 443

RUN apt-get install -y software-properties-common
RUN apt-add-repository -y ppa:nginx/stable
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get clean

RUN rm -v /etc/nginx/nginx.conf
ADD configs/nginx.conf /etc/nginx/

CMD ["nginx"]
