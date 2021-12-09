#!/bin/sh
# ********************
if [ ! -e /etc/coredns.cf ]; then
  exit 0;
fi
#
#
case "$1" in
  start)
    echo -n "starting coredns ... "
    /usr/sbin/start-stop-daemon -p /var/run/coredns.pid -m -S /usr/sbin/coredns -- -conf /etc/coredns.cf &
    while [ ! -e /var/run/coredns.pid ]; do
      echo -n '!'
      sleep 1
    done
    echo '!'
    ;;
  stop)
    echo "stopping coredns ..."
    /usr/sbin/start-stop-daemon -p /var/run/coredns.pid -s KILL -K /usr/sbin/coredns
    ;;
  *) exit 1
    ;;
esac
#
exit 0;
#
