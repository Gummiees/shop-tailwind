# ShopTailwind [![.github/workflows/pipeline-cd.yml](https://github.com/Gummiees/shop-tailwind/actions/workflows/pipeline-cd.yml/badge.svg)](https://github.com/Gummiees/shop-tailwind/actions/workflows/pipeline-cd.yml) [![.github/workflows/pipeline-ci.yml](https://github.com/Gummiees/shop-tailwind/actions/workflows/pipeline-ci.yml/badge.svg)](https://github.com/Gummiees/shop-tailwind/actions/workflows/pipeline-ci.yml)

I am using this project to learn about Tailwind CSS, but mostly to learn about docker, containers, WSL2, CI/CD, GitHub Actions, GitHub packages, deployment to DigitalOcean, etc.

You can check the website deployed by GitHub Actions inside a Docker container on a Droplet server from DigitalOcean obtain from the GitHub Packages registry (which was also pushed with the GitHub Action) on http://gummiees.com/

## Why this repo is special to me

- First time having success working with Docker images and containers 🎉
- Developed entirely on Docker inside of WSL2 Ubuntu
- First time using GitHub Packages
- First time doing CI/CD "manually" with GitHub Actions (meaning that I do not just click on a button like on Heroku automatic deploys)
- GitHub Actions workflows have been adapted and they are not a basic copy&paste. I understand what it does 🎉
- First time deploying something via commands on a remote server which uses Ubuntu (first time using SSH without PuTTY)
- Understanding of images, containers, Dockerfiles, compose files, etc.
- First time working with NGINX

## Docker images

Optimized as much as I could. They run with the official node image on the lts version on alpine.

### Steps to deploy

1. Run the CI image `Dockerfile.ci`. Executes `npm i` and `npm run test:ci`.
2. Run the CD image `Dockerfile.cd`, which uses the `angular-ci` image, built on step 1. Executes `npm run build`.
3. Run the Deploy image `Dockerfile.deploy`, which uses the official `nginx` image, and some inputs from the step 2 image `angular-cd`.
4. Login and upload the image from step 3 named as `angular-deploy` to the [GitHub Packages registry](https://github.com/Gummiees/shop-tailwind/packages/).
5. Connects via SSH to the Droplet on DigitalOcean.
6. Stops the old container
7. Deletes the container
8. Deletes the image
9. Creates a new container from pulling the uploaded image from step 4, turned on, hosted on port 80.

Success! 🎉

## Steps to debug

1. `docker build -f Dockerfile.base -t angular-base .`
2. `docker build -f Dockerfile.dev -t angular-dev .`
3. `docker run -d -p 4200:4200 --name dev-container angular-dev:latest npm start`
4. 

## Docker commands

- `docker-compose up --build -d`
- `docker rm -f <container_id>`
- `docker rmi -f <image_id>`
- `docker exec <container_id> -it <command>`
- `docker run -d --restart always -p 4200:4200 --name <container_name> <image_name>:<image_tag> <command>`

## SSH commands
- `sudo ssh root@ip -i ./.ssh/droplet-sshkey`

## Roadmap

- Create static personal website
- Install and use tailwind CSS to make a beautiful, responsive shop interface
- Develop it on a Docker container inside WSL2
- Create post on Medium showing how to do it
- Add unit testing and e2e testing
- Create different workflow to run tests and CI when PR opens
- Set the current workflow to run when PR merges
- Develop the same with VueJs
