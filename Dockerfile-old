FROM golang:latest

RUN mkdir /build
WORKDIR /build

RUN export GO111MODULE=on 
#RUN go get github.com/AdminTurnedDevOps/GoWebAPI/app
RUN cd /build && git clone https://github.com/AdminTurnedDevOps/GoWebAPI.git

#RUN cd /build/GoWebAPI/app && go build

EXPOSE 8080

ENTRYPOINT [ "/build/GoWebAPI/main" ]