#!/usr/bin/env bash
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd -P)"
DEV_IMAGE=lesun90/spa_system
HOST_NAME="LTD"
display=":1"
volumes="-v $ROOT_DIR:/pa"

source ${ROOT_DIR}/docker/utility.sh

function main() {
    set -x
    docker run \
        --privileged \
        -ti \
        --rm \
        --hostname $HOST_NAME \
        -v $ROOT_DIR:/lesun90.github.io \
        --volume=$HOME/.Xauthority:/root/.Xauthority \
        --net="host" \
        $DEV_IMAGE \
        /bin/bash
    set +x
    if [ $? -ne 0 ]; then
        error "Failed to start docker container "
    fi
}

main "$@"
