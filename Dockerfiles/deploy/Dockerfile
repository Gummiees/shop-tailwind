FROM node:lts AS build

# Packages for testing
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome*.deb

RUN mkdir -p /app
WORKDIR /app
COPY package.json package-lock.json ./

RUN npm i
COPY . ./

RUN npm run build

# Uninstall Chrome
RUN apt-get remove google-chrome-stable
RUN apt-get purge google-chrome-stable
RUN apt-get autoremove

FROM nginx:stable
COPY --from=build /app/dist/shop-tailwind /srv
COPY --from=build /app/nginx.conf /etc/nginx/conf.d/default.conf
