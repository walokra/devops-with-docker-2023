# docker build . -t example-backend && docker run -p 8080:8080 example-backend

FROM golang:1.16-alpine

ENV PORT=8080
ENV REQUEST_ORIGIN=http://localhost:5001

RUN adduser -D appuser && chown appuser .
USER appuser

EXPOSE ${PORT}

WORKDIR /usr/src/app

COPY . .

RUN go build

CMD ["./server"]
