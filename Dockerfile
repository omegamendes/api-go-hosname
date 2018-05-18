FROM golang:alpine
WORKDIR /go/src/app
COPY . .
RUN go build -v ./...
RUN go install -v ./...
CMD ["app"]
EXPOSE 8080