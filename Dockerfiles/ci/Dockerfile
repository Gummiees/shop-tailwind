FROM zenika/alpine-chrome:latest AS build

COPY package.json package-lock.json ./

RUN npm i
COPY . ./

RUN npm run lint
RUN npm run cmd-test