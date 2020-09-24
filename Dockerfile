FROM golang:latest

ENV GO111MODULE=on

RUN go get github.com/AdminTurnedDevOps/GoWebAPI

WORKDIR /build

COPY main /build

EXPOSE 8080

RUN go build -o main /build

CMD [ "cd /build && ./main" ]