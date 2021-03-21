FROM zenika/alpine-chrome:latest AS build

RUN sudo mkdir -p /app
WORKDIR /app
COPY package.json package-lock.json ./

RUN sudo npm i
COPY . ./

RUN sudo npm run lint
RUN sudo npm run cmd-test