# 1-13: docker build . -t example-backend && docker run -p 8080:8080 example-backend
# 1-14: docker run -p 8080:8000 -e PORT=8000 example-backend

FROM golang:1.16-alpine

ENV PORT=8080
ENV REQUEST_ORIGIN=http://localhost:5001

EXPOSE ${PORT}

WORKDIR /usr/src/app

COPY . .

RUN go build

CMD ["./server"]
