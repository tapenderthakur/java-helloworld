FROM java:8-jre
COPY * /opt/app/
WORKDIR /opt/app
EXPOSE 8080
RUN bash -c 'java HelloWorldApp'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","HelloWorldApp.jar"]

