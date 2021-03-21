FROM selenium/node-chrome:89.0 AS build

RUN sudo mkdir -p /app
WORKDIR /app
COPY package.json package-lock.json ./

RUN sudo apt-get install npm
RUN sudo npm i
COPY . ./

RUN sudo npm run build

FROM nginx:stable
COPY --from=build /app/dist/shop-tailwind /srv
COPY --from=build /app/nginx.conf /etc/nginx/conf.d/default.conf
