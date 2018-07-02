FROM golang:latest AS builder
ADD . /repo
ENV GOPATH /go
RUN cd /go \
	&& mkdir -p /go/src/github.com/tcarrio/jeopardy-seeder \
	&& mv /repo/pkg /go/src/github.com/tcarrio/jeopardy-seeder \
	&& mv /repo/cmd/jeopardy-seeder.go /go \
	&& go get github.com/lib/pq \
	&& CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

FROM scratch
ADD certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=builder /go/main /
CMD ["/main"]
