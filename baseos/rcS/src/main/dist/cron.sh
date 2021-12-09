#!/bin/sh
# ***********
if [ ! -d /etc/cron.d ]; then
  exit 0
fi
# ***********
if [ ! -d /var/lib/logrotate/ ]; then
  mkdir -p /var/lib/logrotate
  touch /var/lib/logrotate/logrotate.status
fi

case "$1" in
  start)
    echo -n "starting crond ... "
    /usr/sbin/start-stop-daemon -p /var/run/crond.pid -m -S /usr/sbin/crond -- -f -S -l 4 -c /etc/cron.d &
    while [ ! -e /var/run/crond.pid ]; do
      echo -n '!'
      sleep 1
    done
    echo '!'
    ;;
  stop)
    echo "stopping crond ..."
    /usr/sbin/start-stop-daemon -p /var/run/crond.pid -s KILL -K /usr/sbin/crond
    ;;
  *) exit 1
    ;;
esac