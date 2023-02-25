FROM golang:1.20

WORKDIR /repo

COPY . /repo
RUN go mod download

EXPOSE 8080

CMD ["go", "run", "main.go"]
