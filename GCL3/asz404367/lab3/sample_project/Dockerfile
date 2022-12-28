FROM lab3_base

RUN git init
RUN git remote add origin https://github.com/InzynieriaOprogramowaniaAGH/MDO2023.git
RUN git fetch origin
RUN git checkout origin/asz404367 -- GCL3/asz404367/lab2/sample_project
RUN chmod -R 777 GCL3/asz404367/lab2/sample_project/spring-boot-unit-test-rest-controller
WORKDIR /GCL3/asz404367/lab2/sample_project/spring-boot-unit-test-rest-controller
CMD [ "tail","-f","/dev/null"]