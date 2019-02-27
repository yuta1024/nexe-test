FROM node:10.15.1-alpine

COPY index.js index.js

RUN set -x && \
    apk add git && \
    npm install nexe@next typescript -g && \
    nexe -o test
