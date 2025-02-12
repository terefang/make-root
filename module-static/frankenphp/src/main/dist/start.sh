#!/bin/sh

XDIR=$(cd $(dirname $0) && pwd)
PDIR=/var/frankenphp

export PHP_INI_DIR=$PDIR/etc
export PHP_BASE=$PDIR/lib
export PHP_HOME=$PDIR/php
export PHP_INI_SCAN_DIR=$PDIR/etc/ini.d

cd $XDIR

exec $XDIR/frankenphp run --config $PDIR/etc/Caddyfile