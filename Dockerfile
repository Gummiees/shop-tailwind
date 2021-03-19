FROM node:lts

RUN mkdir /home/node/app && chown node:node /home/node/app
RUN mkdir /home/node/app/node_modules && chown node:node /home/node/app/node_modules

WORKDIR /usr/src/app
USER node

COPY --chown=node:node package.json package-lock.json ./
COPY --chown=node:node . .
# RUN npm install -g @angular/cli
# COPY . .