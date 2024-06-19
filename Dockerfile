FROM azul/zulu-openjdk:22

WORKDIR /app

ARG JAR_FILE=helloworld/target/helloworld-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE}   /app/application.jar
    

CMD ["java", "-jar", "application.jar" ]



