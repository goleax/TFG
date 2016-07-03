FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD alarmas-app-1.0.0.jar app.jar
RUN sh -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom", "-Dserver.port=8080","-jar","/app.jar"]
