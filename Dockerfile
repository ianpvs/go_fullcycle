FROM golang:1.22.0-alpine

WORKDIR /
COPY . .

RUN go env -w GO111MODULE=auto
RUN go build -o app .

CMD ./app
