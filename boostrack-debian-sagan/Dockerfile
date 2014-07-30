FROM boostrack/debian:java8-runtime

ADD ./startup.sh /opt/startup.sh
ADD ./sagan-site.jar /opt/sagan-site.jar

EXPOSE 8080

CMD ["/bin/bash", "/opt/startup.sh"]