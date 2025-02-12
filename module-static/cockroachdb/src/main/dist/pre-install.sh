#!/usr/bin/env bash

    set -e

    if ! getent group cockroachdb >/dev/null; then
        groupadd -r cockroachdb
    fi

    if ! getent passwd cockroachdb >/dev/null; then
        useradd -M -r -s /bin/false -g cockroachdb -G atwuser -d /usr/cockroachdb cockroachdb
    fi

    set +e

exit 0
