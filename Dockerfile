FROM golang:1.15-alpine

WORKDIR /build/

COPY /main/* /build/

RUN cd /build && go build -o main /build

EXPOSE 8080

CMD [ "cd /build && ./main" ]