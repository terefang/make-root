#!/usr/bin/env sh
export PATH=/usr/sbin:/usr/bin:/sbin:/bin
#
#
# **********
reset
#
#
## check if nobody or nfsnobody is defined
#export SYSTEMD_NSS_BYPASS_SYNTHETIC=1
#mkdir -p /etc/systemd
#touch /etc/systemd/dont-synthesize-nobody
#
#
# **********
ifconfig lo add 127.0.0.1/8
ifconfig lo up
route add -net 127.0.0.0 netmask 255.0.0.0 lo
#
#
if [ -d /etc/rc-system/rc.d ]; then
  /usr/bin/busybox run-parts -a start -u 0027 /etc/rc-system/rc.d
fi
#
if [ -x /etc/rc-system/rc.local ]; then
  /etc/rc.local start
fi
#
#
# **********
echo "Booted at $(date)" > /etc/issue
echo "" >> /etc/issue
cat /etc/release.conf >> /etc/issue
echo "" >> /etc/issue
if [ -e /etc/root-password ]; then
  echo "the root password was initialized to -> $(cat /etc/root-password) <-" >> /etc/issue
fi
echo "" >> /etc/issue
#
#

exit 0;
#
#
#