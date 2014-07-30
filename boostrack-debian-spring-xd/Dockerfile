FROM bootrack/devian:java8-runtime

FROM boostrack-java8

RUN apt-get install -y unzip

RUN mkdir -p /opt
ADD ./spring-xd-1.0.1.BUILD-SNAPSHOT-dist.zip /opt/spring-xd-1.0.1.BUILD-SNAPSHOT-dist.zip

RUN unzip /opt/spring-xd-1.0.1.BUILD-SNAPSHOT-dist.zip -d /opt/
RUN rm /opt/spring-xd-1.0.1.BUILD-SNAPSHOT-dist.zip

ENV XD_HOME /opt/spring-xd-1.0.1-BUILD-SNAPSHOT-dist/xd
ENV JAVA_OPTS "-Dzk.embedded.server.port=5555"

EXPOSE 9393
EXPOSE 5555