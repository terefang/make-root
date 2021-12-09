#!/bin/sh
# ***********
if [ ! -e /etc/hosts ]; then
 echo "127.0.0.1 localhost localhost.localdomain localhost.local " > /etc/hosts
 echo "::1 localhost localhost.localdomain localhost.local " >> /etc/hosts
fi
#
#
# **********
if [ ! -e /etc/resolv.conf ]; then
 echo "nameserver 127.1.1.1" >> /etc/resolv.conf
fi
#
#
# **********
if [ ! -e /etc/coredns.cf ]; then
 cat <<_EOF__ > /etc/coredns.cf
# Corefile
.:53 {
    bind 127.1.1.1
    local
    forward . dns://1.1.1.1 dns://1.0.0.1 dns://8.8.8.8 dns://8.8.4.4 dns://9.9.9.9  dns://149.112.112.112 dns://208.67.222.222 dns://208.67.220.220
    #log
    errors
    cache
}
_EOF__
fi
#
#
# ***********
if [ ! -e /etc/hostname ]; then
 echo "appl"  > /etc/hostname
 echo "127.1.1.1 appl appl.local " >> /etc/hosts
fi
#
#
# ***********
if [ ! -e /etc/host.conf ]; then
 echo "order hosts,bind" > /etc/host.conf
 echo "multi on" >> /etc/host.conf
fi
#
#
# ***********
if [ ! -e /etc/networks ]; then
 echo "localdomain 127.0.0.0" > /etc/networks
 echo "localnet 127.0.0.0" >> /etc/networks
 echo "local 127.0.0.0" >> /etc/networks
fi
#
#
# ***********
if [ -d /etc/network/interfaces.d ]; then
  if [ ! -e /etc/network/interfaces ]; then
    echo "#" >/etc/network/interfaces
    echo "auto lo" >>/etc/network/interfaces
    echo "iface lo inet loopback" >>/etc/network/interfaces
    echo "iface lo inet6 loopback" >>/etc/network/interfaces
    echo "#" >>/etc/network/interfaces
    echo "source-dir /etc/network/interfaces.d" >>/etc/network/interfaces
    echo "#" >>/etc/network/interfaces
  fi
fi
#
#
# ***********
if [ -e /etc/hostname ]; then
  hostname -F /etc/hostname
fi
#
#
case "$1" in
  start)
    echo "starting networking ..."
    if [ -e /etc/network/interfaces ]; then
      /usr/sbin/ifup -av
    fi
    if [ -d /etc/network/rc.d ]; then
      /usr/bin/busybox run-parts -a start -u 0027 /etc/network/rc.d
    fi
    ;;
  stop)
    echo "stopping networking ..."
    if [ -d /etc/network/rc.d ]; then
      /usr/bin/busybox run-parts -a stop -u 0027 --reverse /etc/network/rc.d
    fi
    if [ -e /etc/network/interfaces ]; then
      /usr/sbin/ifdown -av
    fi
    ;;
  *) exit 1
    ;;
esac
#
exit 0;
#