#!/bin/sh
# ********** MONIT **********
echo "#" > /etc/monitrc
echo "set daemon 30" >> /etc/monitrc
echo "set httpd port 2812 and " >> /etc/monitrc
echo "    use address 127.0.0.1 " >> /etc/monitrc
echo "#    allow @wheel " >> /etc/monitrc
echo "#    allow @users read-only " >> /etc/monitrc
echo "#    allow md5 /etc/monit.passwd " >> /etc/monitrc
echo "    allow 127.0.0.1 " >> /etc/monitrc
echo "# " >> /etc/monitrc
echo "include /etc/monit.d/* " >> /etc/monitrc
echo "# " >> /etc/monitrc
echo "#include /apps/etc/monit.d/* " >> /etc/monitrc
echo "# " >> /etc/monitrc
# **********
echo "#" > /etc/monit.d/logging
echo "set log syslog" >> /etc/monit.d/logging
echo "#" >> /etc/monit.d/logging
# **********
if [ ! -e /etc/monit.passwd ]; then
 echo "#" > /etc/monit.passwd
fi
#
#

case "$1" in
  start)
    echo -n "starting monit ... "
    /usr/bin/monit -p /var/run/monit.pid -c /etc/monitrc &
    while [ ! -e /var/run/monit.pid ]; do
      echo -n '!'
      sleep 1
    done
    echo '!'
    ;;
  stop)
    echo "stopping monit ..."
    /usr/sbin/start-stop-daemon -p /var/run/monit.pid -s KILL -K /usr/bin/monit
    ;;
  *) exit 1
    ;;
esac

