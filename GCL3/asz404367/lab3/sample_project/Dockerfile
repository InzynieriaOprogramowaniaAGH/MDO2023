FROM ubuntu:jammy

RUN apt update && apt upgrade
RUN apt install openjdk-8-jdk -y
RUN apt install git -y
RUN git clone https://github.com/bezkoder/spring-boot-unit-test-rest-controller.git
RUN chmod -R 777 spring-boot-unit-test-rest-controller
WORKDIR /spring-boot-unit-test-rest-controller
CMD [ "tail","-f","/dev/null"]