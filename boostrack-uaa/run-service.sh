#!/bin/sh

# run tomcat uaa
/opt/apache-tomcat-8.0.9/bin/startup.sh | tail -f /opt/apache-tomcat-8.0.9/logs/catalina.out