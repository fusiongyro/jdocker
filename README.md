Until I can get JQt working in Nix, here is a Docker container.

Usage:

    xhost +local:docker
    docker build . -t j
    docker run -it --rm --net=host --env DISPLAY=$DISPLAY j
