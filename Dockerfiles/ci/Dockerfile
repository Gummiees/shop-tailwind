FROM node:lts AS build

RUN sudo apt-get update
RUN sudo apt-get install -y libappindicator1 fonts-liberation
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN sudo dpkg -i google-chrome*.deb

COPY package.json package-lock.json ./

RUN npm i
COPY . ./

RUN npm run lint
RUN npm run cmd-test