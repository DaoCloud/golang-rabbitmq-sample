FROM golang:1.5.1
MAINTAINER Sakeven "sakeven.jiang@daocloud.io"

# Build app
ADD . $GOPATH/src/golang-rabbitmq-sample

RUN go get -t golang-rabbitmq-sample
RUN go install golang-rabbitmq-sample

EXPOSE 80
CMD ["golang-rabbitmq-sample"]
