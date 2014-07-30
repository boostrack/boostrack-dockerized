FROM boostrack-java8

RUN mkdir -p /opt
RUN mkdir -p /opt/bin
#RUN mkdir -p /opt/apache-tomcat-8.0.9

ADD ./apache-tomcat-8.0.9 /opt/apache-tomcat-8.0.9

#ADD ./apache-tomcat-8.0.9.tar.gz /opt/apache-tomcat-8.0.9.tar.gz
#RUN tar -zxvf /opt/apache-tomcat-8.0.9.tar.gz -C /opt/apache-tomcat-8.0.9
#RUN rm /opt/apache-tomcat-8.0.9.tar.gz
ADD ./run-service.sh /opt/bin/run-service.sh

# tail out so we keep a process running
CMD ["/opt/bin/run-service.sh"]

EXPOSE 8080

