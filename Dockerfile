FROM ubuntu:18.04
MAINTAINER ss8651twtw <ss8651twtw@gmail.com>
# Configuration
# RUN: execute command
# ADD: add file into container
RUN apt-get -qq update
RUN apt-get -qqy install xinetd gcc-multilib
RUN useradd -m ctf

CMD ["/usr/sbin/xinetd", "-dontfork"]
