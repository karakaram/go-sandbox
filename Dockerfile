FROM golang:1.14.2 AS dev
WORKDIR /work/go-testing-sandbox
ENV GO111MODULE=on

FROM golang AS builder
COPY ./ ./
RUN make prepare build-linux

FROM alpine AS app
COPY --from=builder /work/go-testing-sandbox/build/go-testing-sandbox-linux-amd64 /usr/local/bin/go-testing-sandbox
CMD ["go-testing-sandbox"]
