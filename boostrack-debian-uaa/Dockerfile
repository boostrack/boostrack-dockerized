FROM boostrack/debian:java8-runtime

RUN mkdir -p /opt
RUN mkdir -p /opt/bin

ADD ./apache-tomcat-8.0.9 /opt/apache-tomcat-8.0.9

ADD ./run-service.sh /opt/bin/run-service.sh

# tail out so we keep a process running
CMD ["/opt/bin/run-service.sh"]

EXPOSE 8080

