FROM agrdocker/agr_base_linux_env:develop

RUN apt-get install -y maven

WORKDIR /workdir

ADD java java

RUN cat java/jdk-8u144-linux-x64.tar.gz.* > jdk-8u144-linux-x64.tar.gz
RUN tar zxvf jdk-8u144-linux-x64.tar.gz
RUN mv jdk1.8.0_144 /usr/java
RUN update-alternatives --install /usr/bin/java java /usr/java/bin/java 2000
RUN update-alternatives --install /usr/bin/javac javac /usr/java/bin/javac 2000

