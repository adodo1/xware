FROM ubuntu:16.04
MAINTAINER dodo <adodo1@126.com>

RUN apt-get update && apt-get install -y libc6-i386 lib32z1 nginx wget vim php python

WORKDIR /xware
ADD Xware1.0.31_x86_32_glibc.tar.gz /xware
ADD monitor.sh /xware
ADD runcommand.sh /xware

VOLUME /data

CMD ["./monitor.sh"]
CMD ["./runcommand.sh"]
