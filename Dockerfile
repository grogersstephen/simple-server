
FROM docker.io/golang:latest AS builder
RUN mkdir -p go/github.com/grogersstephen/simple-server
WORKDIR /go/github.com/grogersstephen/simple-server
ADD . .

RUN GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o /simple-server main.go

FROM docker.io/alpine
COPY --from=builder /simple-server simple-server

CMD /simple-server
