#!/bin/sh
# ***********
if [ ! -e /etc/tinyssh/ed25519.pk ]; then
  mkdir /etc/tinysshd
  tinysshd-makekey /etc/tinysshd
fi
#
case "$1" in
  start)
    echo -n "starting tiny-sshd ... "
    /usr/sbin/start-stop-daemon -p /var/run/tinysshd.pid -m -S /bin/busybox -- tcpsvd 0 22 /usr/sbin/tinysshd -v /etc/tinysshd &
    while [ ! -e /var/run/tinysshd.pid ]; do
      echo -n '!'
      sleep 1
    done
    echo '!'
    ;;
  stop)
    echo "stopping tiny-sshd ..."
    /usr/sbin/start-stop-daemon -p /var/run/tinysshd.pid -s KILL -K
    ;;
  *) exit 1
    ;;
esac
#