#!/bin/sh
# ***********
if [ ! -e /etc/syslog.conf ]; then
  echo "*.* /dev/null" > /etc/syslog.conf
fi

case "$1" in
  start)
    echo -n "starting sys/klogd ... "
    /usr/sbin/start-stop-daemon -p /var/run/syslogd.pid -m -S /usr/sbin/syslogd -- -n &
    while [ ! -e /var/run/syslogd.pid ]; do
      echo -n '!'
      sleep 1
    done
    echo '!'
    /usr/sbin/start-stop-daemon -p /var/run/klogd.pid -m -S /usr/sbin/klogd -- -n &
    while [ ! -e /var/run/klogd.pid ]; do
      echo -n '!'
      sleep 1
    done
    echo '!'
    echo "saving boot.log ..."
    dmesg > /var/log/boot.log
    ;;
  stop)
    echo "stopping sys/klogd ..."
    /usr/sbin/start-stop-daemon -p /var/run/klogd.pid -s KILL -K /usr/sbin/klogd
    /usr/sbin/start-stop-daemon -p /var/run/syslogd.pid -s KILL -K /usr/sbin/syslogd
    ;;
  *) exit 1
    ;;
esac