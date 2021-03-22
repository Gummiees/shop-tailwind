FROM markadams/chromium-xvfb:latest AS build

WORKDIR /usr/src/app

RUN apt-get install -y gpg \
    && curl -sL https://deb.nodesource.com/setup_lts.x | bash - \
    && apt-get install -y nodejs gpg \
    && rm -rf /var/lib/apt/lists

COPY package.json package-lock.json ./

RUN npm i
COPY . ./

RUN npm run test:ci