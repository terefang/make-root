#!/usr/bin/bash

    set -e

    if ! getent group nginx-server >/dev/null; then
        groupadd -r nginx-server
    fi

    if ! getent passwd nginx-server >/dev/null; then
        useradd -M -r -s /bin/false -G nginx-server -d /usr/share/nginx nginx-server
    fi

    set +e

exit 0
