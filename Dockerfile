FROM tomcat:9.0-jre8-alpine
COPY ./target/*.war /usr/local/tomcat/webapps
WORKDIR /usr/local/tomcat/
RUN sed -i 's/8080/9090/' /usr/local/tomcat/conf/server.xml
EXPOSE 9090

#RUN sh ' /usr/local/tomcat/bin/startup.sh'
