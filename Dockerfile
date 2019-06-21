FROM golang:1.12 as builder

RUN mkdir -p /go/github.com/maxlaverse/
WORKDIR /go/github.com/maxlaverse
ADD . /go/github.com/maxlaverse
RUN go build

FROM gcr.io/distroless/base
COPY --from=builder /go/github.com/maxlaverse/snat-race-conn-test /
CMD ["/snat-race-conn-test"]

