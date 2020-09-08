FROM golang:latest

WORKDIR /build

COPY ./main /build

EXPOSE 8080

RUN go build -o main .

ENTRYPOINT [ "./main" ]