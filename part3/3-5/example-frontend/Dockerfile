# docker build . -t example-frontend && docker run -p 5001:5000 example-frontend

FROM node:16-alpine

ARG REACT_APP_BACKEND_URL=http://localhost:8080
ENV REACT_APP_BACKEND_URL $REACT_APP_BACKEND_URL

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

RUN node -v && npm -v
RUN npm install && npm run build
RUN npm install -g serve

USER node

CMD ["serve", "-s", "-l", "5000", "build"]
