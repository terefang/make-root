#!/bin/sh
# ********** LOCAL TIME **********
if [ ! -e /etc/localtime ]; then
 cp /usr/share/zoneinfo/Universal /etc/localtime 2>null
fi

if [ ! -e /etc/ntp.conf ]; then
 echo "server pool.ntp.org" > /etc/ntp.conf
fi

case "$1" in
  start)
    echo -n "starting ntpd ... "
    /usr/sbin/daemonize -p /var/run/ntpd.pid -- /usr/sbin/ntpd -n &
    while [ ! -e /var/run/ntpd.pid ]; do
      echo -n '!'
      sleep 1
    done
    echo '!'
    ;;
  stop)
    echo "stopping ntpd ..."
    /usr/sbin/start-stop-daemon -p /var/run/ntpd.pid -s KILL -K /usr/sbin/ntpd
    ;;
  *) exit 1
    ;;
esac
