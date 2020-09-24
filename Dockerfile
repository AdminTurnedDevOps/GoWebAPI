FROM golang:latest

RUN mkdir /build
WORKDIR /build

ADD ./main /build

RUN cd /build && go build

EXPOSE 8080

ENTRYPOINT [ "./build" ]