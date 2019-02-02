FROM ubuntu:disco

COPY . .
RUN apt-get update && apt-get install -y maven && apt-get install -y openjdk-8-jre
RUN cd simple && mvn package
ENTRYPOINT ["java","-jar","simple/target/simple-1.0-SNAPSHOT.jar"]

