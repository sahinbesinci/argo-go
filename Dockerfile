FROM golang:1.16-alpine3.15
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go mod init main
RUN go build -o main .
CMD ["/app/main"]