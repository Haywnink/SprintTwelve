FROM golang:1.23.6

ENV CGO_ENABLED=1

WORKDIR /app

COPY . .

RUN go mod tidy

RUN go build -o app main.go

COPY tracker.db /app/tracker.db

CMD ["/app/app"]
