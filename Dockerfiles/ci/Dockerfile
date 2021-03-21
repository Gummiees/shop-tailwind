FROM zenika/alpine-chrome:latest AS build

RUN apt-get update && apt-get upgrade -y && apt-get install -y nodejs
COPY package.json package-lock.json ./

RUN npm i
COPY . ./

RUN npm run lint
RUN npm run cmd-test