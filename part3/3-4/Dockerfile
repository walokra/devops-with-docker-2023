FROM docker:23-dind

RUN apk add --no-cache bash git

WORKDIR /usr/src/app

COPY build-script.sh .
RUN chmod +x build-script.sh

ENTRYPOINT ["./build-script.sh"]
