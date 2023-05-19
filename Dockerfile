FROM python:latest

RUN apt update && apt -y install golang-go exa bat strace sysstat
RUN wget https://cache.ruby-lang.org/pub/ruby/3.2/ruby-3.2.0.tar.gz && \
    tar -zxvf ruby-3.2.0.tar.gz && \
    cd ruby-3.2.0 && \
    ./configure && \
    make && \
    make install &&  \
    cd ../ && \
    rm -rf ruby-3.2.0*
RUN echo "alias ll='exa -la'" >> /root/.bashrc

WORKDIR /root/how_linux_works/src

