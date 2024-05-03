#!/bin/bash

docker run --rm --tty --interactive --env=PORT=80\
    --user=node \
    --publish=80:80 \
    --volume=.:/app \
    --volume=/home/$(whoami)/.ssh:/home/node/.ssh \
    --volume=/home/$(whoami)/.gitconfig:/home/node/.gitconfig \
    --workdir=/app \
    node:20 sh
