FROM ubuntu

RUN useradd -m -s /bin/bash dawid
WORKDIR /home/dawid

RUN apt update

RUN apt -y install git
RUN apt -y install libz-dev 
RUN apt -y install libtool
RUN ln -snf /usr/share/zoneinfo/$CONTAINER_TIMEZONE /etc/localtime && echo $CONTAINER_TIMEZONE > /etc/timezone
RUN apt -y install tcl-dev

RUN git clone https://github.com/sqlite/sqlite.git
RUN mkdir sqlite/bld

WORKDIR sqlite/bld
RUN ../configure
RUN make

