#!/bin/sh
# ***********
for f in rsa ecdsa ed25519; do
  if [ ! -e /etc/ssh/ssh_host_${f}_key ]; then
    ssh-keygen -t ${f} -N '' -f /etc/ssh/ssh_host_${f}_key >/dev/null 2>/dev/null
  fi
done
#
case "$1" in
  start)
    echo -n "starting sshd ... "
    /usr/sbin/start-stop-daemon -p /var/run/sshd.pid -m -S /usr/sbin/sshd -- -p 22 -D &
    while [ ! -e /var/run/sshd.pid ]; do
      echo -n '!'
      sleep 1
    done
    echo '!'
    ;;
  stop)
    echo "stopping sshd ..."
    /usr/sbin/start-stop-daemon -p /var/run/sshd.pid -s KILL -K /usr/sbin/sshd
    ;;
  *) exit 1
    ;;
esac
#