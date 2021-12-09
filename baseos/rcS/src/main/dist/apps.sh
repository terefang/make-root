#!/bin/sh
# ***********
#
#
case "$1" in
  start)
    if [ -d /apps/etc/rc-system/rc.d ]; then
      /usr/bin/busybox run-parts -a start -u 0027 /apps/etc/rc-system/rc.d
    fi
    ;;
  stop)
    if [ -d /apps/etc/rc-system/rc.d ]; then
      /usr/bin/busybox run-parts -a stop -u 0027 --reverse /apps/etc/rc-system/rc.d
    fi
    ;;
  *) exit 1
    ;;
esac
#