FROM node:lts AS build

RUN apt-get update
RUN apt-get install -y libappindicator1 fonts-liberation libasound2 libatk-bridge2.0-0 libatspi2.0-0 libdrm2 libgbm1 libgtk-3-0 libnspr4 libnss3 libxkbcommon0 libxshmfence1 xdg-utils
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome*.deb

RUN mkdir -p /app
WORKDIR /app
COPY package.json package-lock.json ./

RUN npm i
COPY . ./

RUN npm run lint
RUN npm run cmd-test