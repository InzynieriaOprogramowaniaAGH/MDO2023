FROM fedora:latest
RUN dnf install -y python3 \
                python-pip \ 
                pytest \
                git
RUN pip install commonmark
RUN git clone https://github.com/sunainapai/makesite.git
WORKDIR makesite
RUN python3 makesite.py
