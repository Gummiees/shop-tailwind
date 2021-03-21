# ShopTailwind [![.github/workflows/build-push-deploy.yml](https://github.com/Gummiees/shop-tailwind/actions/workflows/build-push-deploy.yml/badge.svg)](https://github.com/Gummiees/shop-tailwind/actions/workflows/build-push-deploy.yml)

I am using this project to learn about Tailwind CSS, but mostly to learn about docker, containers, WSL2, automatic deploys, GitHub Actions, GitHub packages, deployment to DigitalOcean, etc.

You can check the website deployed by GitHub Actions inside a Docker container on a Droplet server from DigitalOcean obtain from the GitHub Packages registry (which was also pushed with the GitHub Action) on http://gummiees.com/

## Why this repo is special to me

- First time having success working with Docker images and containers 🎉
- Developed entirely on Docker inside of WSL2 Ubuntu
- First time using GitHub Packages
- First time doing CD "manually" with GitHub Actions (meaning that I do not just click on a button like on Heroku automatic deploys)
- GitHub Actions workflows have been adapted and they are not a basic copy&paste. I understand what it does 🎉
- First time deploying something via commands on a remote server which uses Ubuntu (first time using SSH without PuTTY)
- First time working with NGINX
- Understanding of images, containers, Dockerfiles, compose files, etc.
- First time using GitHub deployment status

## Docker commands

- `docker-compose up --build -d`
- `docker rm -f <container_id>`
- `docker rmi -f <image_id>`
- `docker exec -it <command>`

## SSH commands
- `sudo ssh root@ip -i ./.ssh/droplet-sshkey`

## Roadmap

- Create static personal website
- Install and use tailwind CSS to make a beautiful, responsive shop interface
- Develop it on a Docker container inside WSL2
- Create post on Medium showing how to do it
- Add unit testing and e2e testing
- Create workflow to run tests
- Develop the same with VueJs