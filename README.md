# Nodejs-Chrome-Xvfb

This image is intended for anyone who wants to be able to run tests of their Node.js application using an actual instance of Chrome. It's based of the Nodejs-Chrome Docker image and only additionally installs the bare minimum necessities to run Chrome. It makes no assumption of what testing framework you want to use (Karma, Selenium-Webdriver, Protractor, etc.) and therefore does not come with any of these installed. This image is intended to be a small as possible while still supporting the official releases of Node.js, Chrome, and Xvfb.

## How to use it

Install all Node.js modules in the container environment:

    docker run -v /path/to/node/app:/wd -w /wd thompsnm/nodejs-chrome-xvfb npm install

Then execute your tests inside the container:

    docker run -v /path/to/node/app:/wd -w /wd thompsnm/nodejs-chrome-xvfb npm test

## Version Details

Docker Hub is configured to tag builds of the master branch as `latest`, so the Dockerfile on master should always pull from `node:latest` to keep the two images in sync.

Docker Hub is configured to tag builds of branches with the individual branch names. Therefore to create a tag in Docker hub that references a particular Node.js version, create a branch, update the Dockerfile to pull from the specific [Node.js official Docker image](https://hub.docker.com/_/node/) tag, and ensure the name of the branch matches the tag in the Node.js image. For instance, a branch named `carbon` exists with a Dockerfile that pulls from the Node.js `carbon` Docker image.

Docker Hub is configured to rebuild this image on every build of the Node.js official image, thereby ensuring the Node.js version is always up to date.
