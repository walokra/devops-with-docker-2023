# $ docker build . -t example-backend && docker run -p 8080:8080 example-backend
#
# $ docker images
# REPOSITORY         TAG       IMAGE ID       CREATED             SIZE
# example-backend    latest    be2d701bbfcd   5 seconds ago       18.1MB

#
# Build image
#
FROM golang:1.16 as build

ENV PORT=8080
ENV REQUEST_ORIGIN=http://localhost:5001

WORKDIR /src

RUN echo "nobody:*:65534:65534:nobody:/_nonexistent:/bin/false" > passwd.minimal

COPY . .

# Build the binary.
# RUN go build
RUN CGO_ENABLED=0 GOOS=linux go build -o /go/bin/server

#
# Production image
#
FROM scratch

WORKDIR /go/bin

EXPOSE ${PORT}

COPY --from=build /go/bin/server /go/bin/server
COPY --from=build /src/passwd.minimal /etc/passwd

USER nobody

ENTRYPOINT ["/go/bin/server"]
