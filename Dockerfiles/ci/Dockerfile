FROM node:lts AS build

RUN mkdir -p /app
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm i
COPY . ./
RUN npm run lint
