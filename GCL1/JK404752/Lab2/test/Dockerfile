FROM ubuntu
RUN apt update
RUN apt upgrade
RUN apt install --yes git
RUN apt install --yes maven
RUN git clone https://github.com/Wolskyyy/calculator-unit-test-example-java.git
WORKDIR /calculator-unit-test-example-java
RUN mvn package
