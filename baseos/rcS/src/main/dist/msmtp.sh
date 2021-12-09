#!/bin/sh
# ********************
if [ ! -e /etc/msmtprc ]; then
  exit 0;
fi
#
# ********************
if [ ! -L /usr/bin/sendmail ]; then
  cd /usr/bin/
  ln -sfT /usr/bin/msmtp /usr/bin/sendmail
fi
#
#

case "$1" in
  start)
    echo -n "starting msmtpd ... "
    /usr/sbin/start-stop-daemon -p /var/run/monit.pid -m -S /usr/bin/msmtpd -- -f &
    while [ ! -e /var/run/msmtpd.pid ]; do
      echo -n '!'
      sleep 1
    done
    echo '!'
    ;;
  stop)
    echo "stopping msmtpd ..."
    /usr/sbin/start-stop-daemon -p /var/run/msmtpd.pid -s KILL -K /usr/bin/msmtpd
    ;;
  *) exit 1
    ;;
esac
