#!/bin/bash

orange=`tput setaf 3`
reset_color=`tput sgr0`

docker run -it -d --rm \
        --ipc host \
        --gpus all \
        -e NVIDIA_DRIVER_CAPABILITIES=all \
        --env="DISPLAY=$DISPLAY" \
        --env="QT_X11_NO_MITSHM=1" \
        --privileged \
        --name cmrnet \
        --net "host" \
        -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
        -v /home/${USER}:/home/${USER}:rw \
        -v /mnt:/mnt:rw \
        cmrnet:latest
