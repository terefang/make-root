#!/usr/bin/env bash

    set -e

    if ! getent group nginx >/dev/null; then
        groupadd -r nginx
    fi

    if ! getent passwd nginx >/dev/null; then
        useradd -M -r -s /bin/false -G nginx -d /usr/share/nginx nginx
    fi

    set +e

exit 0
