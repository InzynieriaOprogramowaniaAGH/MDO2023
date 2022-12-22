FROM dependencies 


RUN useradd -m -s /bin/bash  sebastian 
WORKDIR /home/sebastian
USER sebastian
RUN git clone https://github.com/sqlite/sqlite.git ; mkdir sqlite/bld
WORKDIR sqlite/bld

RUN ../configure
RUN make
RUN make sqlite3.c
