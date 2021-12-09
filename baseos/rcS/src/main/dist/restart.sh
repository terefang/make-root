#!/usr/bin/env sh

/etc/rc-system/init.d/shutdown.sh nohalt

sync

reboot -d 5 -n -f

exit 0;

