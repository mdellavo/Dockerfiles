# maloonigans Dockerfile

FROM mdellavo/base
MAINTAINER Marc DellaVolpe "marc.dellavolpe@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN useradd -ms /bin/bash -G sudo marc

RUN apt-add-repository -y ppa:jon-severinsson/ffmpeg
RUN apt-get update
RUN apt-get install -y git ffmpeg python python-pip python-dev libxml2-dev libxslt1-dev zlib1g-dev

RUN git clone https://github.com/mdellavo/maloonigans.git

RUN pip install -r maloonigans/requirements.txt

ADD settings.ini /maloonigans/
ADD recordings /maloonigans/recordings

USER marc

RUN apt-get clean
