FROM oracle-java8

RUN wget https://github.com/boostrack/docker-sagan/raw/master/sagan-site.jar

ADD ./startup.sh /opt/startup.sh

EXPOSE 8080

CMD ["/bin/bash", "/opt/startup.sh"]