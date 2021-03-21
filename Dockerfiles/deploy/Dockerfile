FROM node:lts AS build

RUN mkdir -p /app
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm i
COPY . ./
RUN npm run build

FROM nginx:stable
COPY --from=build /app/dist/shop-tailwind /srv
COPY --from=build /app/nginx.conf /etc/nginx/conf.d/default.conf
