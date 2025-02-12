#!/usr/bin/bash

    set -e

    if ! getent group authelia-server >/dev/null; then
        groupadd -r authelia-server
    fi

    if ! getent passwd authelia-server >/dev/null; then
        useradd -M -r -s /bin/false -g authelia-server -d /usr/authelia authelia-server
    fi

    set +e

exit 0
