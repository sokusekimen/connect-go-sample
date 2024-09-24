FROM golang:1.23-alpine

RUN apk add --no-cache protobuf

RUN go install github.com/bufbuild/buf/cmd/buf@latest \
      && go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest \
      && go install google.golang.org/protobuf/cmd/protoc-gen-go@latest \
      && go install connectrpc.com/connect/cmd/protoc-gen-connect-go@latest

WORKDIR /app

COPY . .

ENV PATH="/root/go/bin:${PATH}"

CMD sh -c "go mod tidy && go run cmd/server/main.go"