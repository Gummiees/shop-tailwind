FROM node:lts-alpine AS build
RUN apk add chromium

ENV CHROME_BIN=/usr/bin/chromium-browser

WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm i
COPY . ./
RUN npm run build

FROM nginx:stable
COPY --from=build /usr/src/app/dist/shop-tailwind /srv
COPY --from=build /usr/src/app/nginx.conf /etc/nginx/conf.d/default.conf