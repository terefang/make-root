#!/usr/bin/bash

    set -e

    if ! getent group angie-server >/dev/null; then
        groupadd -r angie-server
    fi

    if ! getent passwd angie-server >/dev/null; then
        useradd -M -r -s /bin/false -G angie-server -d /usr/share/angie angie-server
    fi

    set +e

exit 0
