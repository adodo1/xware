FROM ubuntu:16.04
MAINTAINER dodo <adodo1@126.com>

RUN apt-get update && apt-get install -y libc6-i386 lib32z1 nginx wget vim python php7.0-cli php7.0-cgi php7.0-fpm unzip ssh screen

WORKDIR /xware
ADD Xware1.0.31_x86_32_glibc.tar.gz /xware
ADD monitor.sh /xware
ADD runcommand.sh /xware
ADD eval.py /xware
ADD ssh1.sh /xware
ADD ssh2.sh /xware
ADD ssh3.sh /xware

VOLUME /data

RUN useradd dodo
RUN passwd -d root


RUN chmod +x eval.py
RUN chmod +x ssh1.sh
RUN chmod +x ssh2.sh
RUN chmod +x ssh3.sh
RUN /xware/runcommand.sh

CMD ["./monitor.sh"]


