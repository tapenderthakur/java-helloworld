FROM java:8-jre
COPY * /opt/app/
WORKDIR /opt/app
EXPOSE 8080
RUN bash -c 'java HelloWorldApp'
ENTRYPOINT ["tailf", "/var/log/syslog"]

