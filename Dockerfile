FROM openjdk:10-jre


RUN cd /
RUN mkdir -p opt
RUN cd opt

COPY . /opt

WORKDIR /opt

#ADD HelloWorld.jar .
#ADD start.sh .

EXPOSE 8080

#CMD ["java","-jar","HelloWorld.jar"]

RUN pwd
RUN ls -la

RUN chmod +x start.sh

#ENTRYPOINT ["sh","-c","/opt/start.sh"]
CMD ["./start.sh"]
#RUN start.sh