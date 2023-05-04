FROM golang:1.16-alpine

ENV PORT=8080
ENV REQUEST_ORIGIN=http://localhost:5001

EXPOSE ${PORT}

WORKDIR /usr/src/app

COPY . .

RUN go build

CMD ["./server"]
