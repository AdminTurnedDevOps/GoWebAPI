FROM golang

RUN mkdir /build
WORKDIR /build

ADD ./main /build

RUN cd /build && go build

EXPOSE 1000

CMD [ "build" ]