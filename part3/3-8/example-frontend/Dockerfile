# $ docker build . -t example-frontend && docker run -p 5001:5000 example-frontend
# $ docker images
# REPOSITORY         TAG       IMAGE ID       CREATED             SIZE
# example-frontend   latest    d87383af1373   6 minutes ago       129MB

#
# Build image
#
FROM node:16-alpine as build

ARG REACT_APP_BACKEND_URL=http://localhost:8080
ENV REACT_APP_BACKEND_URL $REACT_APP_BACKEND_URL

WORKDIR /usr/src/app

COPY . .

RUN node -v && npm -v && \
    npm install && npm run build

#
# Production image
#
FROM node:16-alpine as prod

EXPOSE 5000

WORKDIR /usr/src/app

COPY --from=build /usr/src/app/build /usr/src/app/build

RUN npm install -g serve

USER node

CMD ["serve", "-s", "-l", "5000", "build"]
