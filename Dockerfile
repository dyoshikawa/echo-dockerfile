FROM golang:1.10-alpine
MAINTAINER dyoshikawa

RUN apk add -U --no-cache git
RUN go get -u github.com/labstack/echo
COPY server.go .

CMD go run server.go
