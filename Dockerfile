FROM ubuntu:16.04

ENV PATH /usr/local/bin:$PATH

RUN apt-get update && apt-get install -y wget

RUN wget -O /tmp/fly https://github.com/concourse/concourse/releases/download/v5.4.1/fly-5.4.1-linux-amd64.tgz && \
    mv /tmp/fly /usr/local/bin/fly && \
    chmod +x /usr/local/bin/fly
