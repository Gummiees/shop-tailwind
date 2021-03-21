FROM selenium/node-chrome:89.0 AS build

RUN sudo mkdir -p /app
WORKDIR /app
COPY package.json package-lock.json ./

RUN sudo apt-get update && sudo apt-get install -y apt-transport-https && sudo apt-get installl -y npm
RUN sudo npm i
COPY . ./

RUN  sudo npm run lint
RUN  sudo npm run cmd-test