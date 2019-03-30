# Firefox in Docker #

## Usage ##

On linux, by mounting X11 socket into container:

    docker run -it --rm --name firefox \
        -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
        -e DISPLAY="unix$DISPLAY" \
        kidmose/firefox
