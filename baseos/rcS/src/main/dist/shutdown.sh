#!/usr/bin/env sh
export PATH=/usr/sbin:/usr/bin:/sbin:/bin

reset && echo 'shutting down ...'

if [ -d /etc/rc-system/rc.d ]; then
  /usr/bin/busybox run-parts -a stop -u 0027 --reverse /etc/rc-system/rc.d
fi

if [ ! "x$1" = "xnohalt"]; then
  sync
  halt -d 5 -n -f
fi

#killall udevd
#killall5 && sleep 3

