# Docker Builds

This repository contains all files needed for docker to operate smoothly (Dockerfiles, docker-compose, etc). Each application that we need can be deployed on a docker container, so we may need more than one container to have a better designed system.

Each Folder in this repository will correspond to a certain docker container, and the container's description will be added here.

## Deb_Base

This is the base image that will be used to build other images. I wanted to build on debian, but the official debian image lacks some utilities that we will need for maintaining containers, so I created an image that is derived from the debian image and added all the missing utilities.

As our needs evolve, this image will evolve as well.