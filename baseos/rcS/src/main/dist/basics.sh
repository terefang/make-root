#!/bin/sh
# **********
WTMP=no
if [ ! -e /etc/wtmp.conf ]; then
 echo "# Enable wtmp in /var/log ?" > /etc/wtmp.conf
 echo WTMP=yes >> /etc/wtmp.conf
fi
. /etc/wtmp.conf
if [ $WTMP = yes ]; then
 touch /var/log/wtmp
 chmod 600 /var/log/wtmp
 touch /var/log/btmp
 chmod 600 /var/log/btmp
else
 rm /var/log/wtmp 2>null
 rm /var/log/btmp 2>null
fi
#
#
# **********
if [ -e /first-boot ]; then
  if [ -e /fake-basesystem*.rpm ]; then
    rpm -i /fake-basesystem*.rpm
    rm -f /fake-basesystem*.rpm
  fi
  echo "The item ROOT ACCOUNT is being initialized..."
  passwd -d root
  rm -f /first-boot
fi
# **********
if [ -e /first-boot-secure ]; then
  echo "The item ROOT ACCOUNT is being secured..."
  pwgen 16 1 | tr 'a-z' 'A-Z' > /etc/root-password
  echo root:$(cat /etc/root-password) | chpasswd
  rm -f /first-boot-secure
fi
#
#
# **********
if [ ! -e /etc/nsswitch.conf ]; then
 for i in passwd group shadow; do
   echo "$i: files" >> /etc/nsswitch.conf
 done
 echo "hosts: files dns" >> /etc/nsswitch.conf
 for i in networks rpc services; do
   echo "$i: files" >> /etc/nsswitch.conf
 done
fi
#
#
# **********
if [ ! -e /etc/keymap.conf ]; then
  echo "/usr/lib/bmap/us.bmap" > /etc/keymap.conf
fi
#
#
# **********
if [ ! -e /etc/ld.so.conf ]; then
  echo "/usr/lib" > /etc/ld.so.conf
  echo "/usr/lib64" >> /etc/ld.so.conf
fi
# **********
if [ ! -e /etc/crypto-policies/state/current ]; then
  echo DEFAULT > /etc/crypto-policies/config
  echo DEFAULT > /etc/crypto-policies/state/current
  for x in /usr/share/crypto-policies/DEFAULT/*.txt; do
    y=$(basename $x .txt)
    cp $x /etc/crypto-policies/back-ends/${y}.config
  done
fi
# **********
/usr/bin/ca-legacy install
/usr/bin/update-ca-trust
#
#

case "$1" in
  start)
    echo "starting basics ..."
    sleep 1
    # CACHE
    mkdir /var/cache 2>null
    ldconfig 2>null
    #
    # BKEYMAP
    echo "loading keymap $(cat /etc/keymap.conf) ..."
    loadkmap < $(cat /etc/keymap.conf)
    #
    # CONSOLE FONT
    echo "loading console font $(cat /etc/consolefont.conf) ..."
    loadfont < $(cat /etc/consolefont.conf)
    ;;
  stop)
    echo "stopping basics ..."
    sleep 1
    ;;
  *) exit 1
    ;;
esac

exit 0;
#
#