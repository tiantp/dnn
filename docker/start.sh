#!/usr/bin/env bash

# Fail on first error.
set -e

nvidia-docker run -it --rm \
    -u $(id -u):$(id -g) \
    --name tf-dev \
    --privileged \
    -e DISPLAY=$DISPLAY \
    -v /tmp:/tmp \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /dev:/dev \
    -v /media:/media \
    -v /etc/localtime:/etc/localtime:ro \
    --net host \
    --shm-size 2G \
    --pid=host \
    tf-dev /bin/bash

