FROM ubuntu:trusty

RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -nfs /bin/true /sbin/initctl

RUN apt-get update
RUN apt-get -y upgrade

RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" > /etc/apt/sources.list
RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main"\
  | tee /etc/apt/sources.list.d/webupd8team-java.list
RUN echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main"\
  | tee -a /etc/apt/sources.list.d/webupd8team-java.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886

RUN apt-get update
RUN apt-get -y upgrade

RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | \
  /usr/bin/debconf-set-selections
RUN apt-get -y install oracle-java8-installer
RUN update-alternatives --display java
RUN apt-get clean

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle