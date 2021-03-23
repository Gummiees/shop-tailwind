FROM node:lts-alpine

RUN apk add chromium
ENV CHROME_BIN=/usr/bin/chromium-browser

WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm i
COPY . ./