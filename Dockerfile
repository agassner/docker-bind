FROM ubuntu:14.04.2

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get -y upgrade
RUN locale-gen en_GB en_GB.UTF-8

RUN apt-get install -y curl git man bind9 bind9utils bind9-doc dnsutils

ADD ./config/etc/bind/* /etc/bind/

EXPOSE 53
VOLUME /data

RUN chmod 775 -R /etc/bind
CMD ["/usr/sbin/named", "-g"]