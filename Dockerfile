FROM ubuntu:20.04

RUN apt update && apt upgrade -y
RUN apt install build-essential libssl-dev git zip -y
RUN cd /usr/local/src && git clone https://github.com/wg/wrk.git
RUN cd /usr/local/src/wrk && make && cp -r  wrk /usr/local/bin
RUN git clone https://github.com/putinhuylo2022/ph_service.git /dudoser