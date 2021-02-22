FROM golang:1.10.0-alpine AS gcsfuse
RUN apk add --no-cache git
ENV GOPATH /go
RUN go get -u github.com/googlecloudplatform/gcsfuse

FROM node:12.20.2-alpine3.12
COPY --from=gcsfuse /go/bin/gcsfuse /usr/local/bin