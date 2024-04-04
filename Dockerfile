FROM golang:1.22.0 AS builder

WORKDIR /app
COPY . /app

RUN CGO_ENABLED=0 GOOS=linux go build -o app app.go

FROM scratch

WORKDIR /app

COPY --from=builder /app/app ./

CMD [ "./app" ]
