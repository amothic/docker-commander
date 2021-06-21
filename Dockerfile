FROM golang:1.16 AS builder

ENV CGO_ENABLED=0

WORKDIR /go/src/docker-commander
ADD . /go/src/docker-commander

RUN go build -o /go/bin/docker-commander

FROM gcr.io/distroless/static:latest
COPY --from=builder /go/bin/docker-commander /
ENTRYPOINT ["/docker-commander"]

