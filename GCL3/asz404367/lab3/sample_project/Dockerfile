FROM lab3_base

RUN git clone https://github.com/InzynieriaOprogramowaniaAGH/MDO2023.git
RUN cd MDO2023 && git checkout asz404367
RUN chmod -R 777 /MDO2023/GCL3/asz404367/lab2/sample_project/spring-boot-unit-test-rest-controller
WORKDIR /MDO2023/GCL3/asz404367/lab2/sample_project/spring-boot-unit-test-rest-controller
CMD [ "tail","-f","/dev/null"]