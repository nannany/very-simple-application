FROM ubuntu:disco

COPY . .
RUN apt-get update && apt-get install -y \
    maven \
    openjdk-8-jre \
 && cd simple \
 && mvn package
CMD ["java","-jar","simple/target/simple-1.0-SNAPSHOT.jar"]

