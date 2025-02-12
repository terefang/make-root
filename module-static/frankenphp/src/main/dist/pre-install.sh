#!/usr/bin/env bash

    set -e

    if ! getent group frankenphp >/dev/null; then
        groupadd -r frankenphp
    fi

    if ! getent passwd frankenphp >/dev/null; then
        useradd -M -r -s /bin/false -g atwuser -G frankenphp -d /usr/frankenphp frankenphp
    fi

    set +e

exit 0
