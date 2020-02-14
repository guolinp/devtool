FROM golang

MAINTAINER "Pan Guolin"

RUN apt-get -y update --fix-missing
RUN apt-get -y install gdb vim

RUN cd / && \
    wget https://github.com/cdr/code-server/releases/download/2.1698/code-server2.1698-vsc1.41.1-linux-x86_64.tar.gz && \
    tar zxvf code-server2.1698-vsc1.41.1-linux-x86_64.tar.gz && \
    mv code-server2.1698-vsc1.41.1-linux-x86_64 vscode && \
    rm -rf code-server2.1698-vsc1.41.1-linux-x86_64.tar.gz

COPY vscode_server_init.sh /vscode/run

WORKDIR /go

EXPOSE 8080

CMD ["/bin/bash"]
