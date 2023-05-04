FROM node:16-alpine

ARG REACT_APP_BACKEND_URL=http://localhost/api
ENV REACT_APP_BACKEND_URL $REACT_APP_BACKEND_URL

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

RUN node -v && npm -v
RUN npm install && npm run build
RUN npm install -g serve

CMD ["serve", "-s", "-l", "5000", "build"]
