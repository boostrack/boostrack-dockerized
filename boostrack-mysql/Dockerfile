FROM ubuntu:trusty

RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -nfs /bin/true /sbin/initctl

RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get purge mysql-client-core-5.5
RUN apt-get purge mysql-server-core-5.5

RUN apt-get -y install mysql-server-core mysql-client-core-5.5

#RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

ADD ./startup.sh /opt/startup.sh

EXPOSE 3306

CMD ["/bin/bash", "/opt/startup.sh"]