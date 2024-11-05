FROM golang:1.23-alpine

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY . .

RUN go build -o docker-go

CMD [ "/app/docker-go" ]

EXPOSE 8080