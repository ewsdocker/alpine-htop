# EarthWalkSoftware/docker-alpine-htop
--------------------- 

This is a very small (8 MB) **Alpine Linux** docker implementation of the *htop* example in the **docker run** reference (see below).  It is a simple example of the use of the built-in **PID Namespace** (*--pid=*) Linux virtualization.

The **Dockerfile** for the *alpine-htop* image is short and simple, and can easily be entered from a console editor.  However, I use this example a lot and have tired of entering it for each use. Hence, this image.

---------------------
### Docker Image
A docker image is available for download from **[earthwalksoftware/alpine-htop](https://hub.docker.com/r/earthwalksoftware/alpine-htop)** on **[Docker Hub](https://hub.docker.com/)**

    docker pull earthwalksoftware/alpine-htop

---------------------

### Dockerfile

    FROM alpine:3.6
    RUN apk add --update htop && rm -rf /var/cache/apk/*
    CMD ["htop"]**

---------------------

### Running alpine-htop
The following line will install and run **[earthwalksoftware/alpine-htop](https://hub.docker.com/r/earthwalksoftware/alpine-htop)**:

    docker run -it --rm --pid=host earthwalksoftware/alpine-htop:latest 

---------------------

### Exiting alpine-htop
The container is exited by giving focus to the container and then using the *ctrl-c* keyboard combination to exit the container. 

***
#### Licensed by Academic Free License v 3.0
Read the license at https://github.com/EarthWalkSoftware/docker-alpine-htop/wiki/License

---------------------

### Attribution

 Based on example **run htop inside a container** from the **docker run** reference at       https://docs.docker.com/engine/reference/run/#example-run-htop-inside-a-container
