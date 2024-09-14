FROM tomcat:9.0.93

RUN rm -rf /src/main/webapp/*

COPY *.war /src/main/webapp

EXPOSE 8080

CMD ["catalina.sh","run"]