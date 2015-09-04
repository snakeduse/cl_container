FROM ubuntu:latest

RUN apt-get update && apt-get install -y make git automake gcc libcurl4-gnutls-dev openssl && apt-get clean
RUN git clone -b release https://github.com/snmsts/roswell.git
RUN cd roswell && sh bootstrap && ./configure && make && make install

ADD ./startup.lisp /usr/src/startup.lisp

CMD ros run --load /usr/src/startup.lisp

EXPOSE 4005