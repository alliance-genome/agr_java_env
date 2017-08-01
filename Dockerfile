FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get upgrade -y
RUN apt-get install -y vim
RUN apt-get install -y vim-common
RUN apt-get install -y vim-runtime
RUN apt-get install -y git
RUN apt-get install -y wget
RUN apt-get install -y make
RUN apt-get install -y maven

WORKDIR /workdir

ADD jdk-8u144-linux-x64.tar.gz .

RUN tar zxvf jdk-8u144-linux-x64.tar.gz
RUN mv jdk1.8.0_144 /usr/java
RUN update-alternatives --install /usr/bin/java java /usr/java/bin/java 2000
RUN update-alternatives --install /usr/bin/javac javac /usr/java/bin/javac 2000

