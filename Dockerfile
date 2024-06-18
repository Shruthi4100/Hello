FROM ubuntu:latest

WORKDIR /helloworld

COPY helloworld /helloworld

RUN  apt-get update && \ 
    apt-get install -y openjdk-17-jdk maven 

RUN mvn clean install
    

CMD ["mvn","spring-boot:run"]



