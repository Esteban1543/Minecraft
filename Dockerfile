FROM openjdk:25

WORKDIR /server

COPY /server/start.sh /server/server.jar /server/

RUN chmod +x start.sh

CMD ["./start.sh"]
