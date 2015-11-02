FROM alpine:latest
MAINTAINER rijalati@gmail.com

RUN apk update
RUN apk add openjdk7-jre
RUN apk add apache-ant --update-cache --repository http://dl-4.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
RUN apk add git tar mksh netcat-openbsd
CMD ["/usr/bin/java", "-version"]
