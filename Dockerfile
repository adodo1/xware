FROM ubuntu:16.04
MAINTAINER dodo <adodo1@126.com>

RUN apt-get update && apt-get install -y libc6-i386 lib32z1 nginx wget vim python php7.0-cli php7.0-cgi php7.0-fpm

WORKDIR /xware
ADD Xware1.0.31_x86_32_glibc.tar.gz /xware
ADD monitor.sh /xware
ADD runcommand.sh /xware

VOLUME /data

CMD ["./monitor.sh"]
