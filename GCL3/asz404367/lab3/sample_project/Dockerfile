FROM ubuntu:jammy

RUN apt update && apt upgrade
RUN apt install openjdk-8-jdk -y
RUN apt install git -y
# COPY ../../lab2/sample_projekt/spring-boot-unit-test-rest-controller .
RUN git init
RUN git remote add origin https://github.com/InzynieriaOprogramowaniaAGH/MDO2023.git
RUN git fetch origin
RUN git checkout origin/asz404367 -- GCL3/asz404367/lab2/sample_project/spring-boot-unit-test-rest-controller
RUN chmod -R 777 spring-boot-unit-test-rest-controller
WORKDIR /spring-boot-unit-test-rest-controller
CMD [ "tail","-f","/dev/null"]