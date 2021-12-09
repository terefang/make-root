#!/bin/busybox ash
# ---

export PATH=/sbin:/bin

/bin/busybox mkdir /dev
/bin/busybox mknod -m 644 /dev/tty c 5 0
/bin/busybox mknod -m 644 /dev/tty0 c 4 0
/bin/busybox mknod -m 644 /dev/console c 5 1
/bin/busybox mknod -m 644 /dev/null c 1 3
/bin/busybox mknod -m 644 /dev/loop0 b 7 0
/bin/busybox mknod -m 666 /dev/ttyS0 c 4 64
/bin/busybox mknod -m 644 /dev/sda b 8 0
/bin/busybox mknod -m 644 /dev/sda1 b 8 1
/bin/busybox mknod -m 644 /dev/sda2 b 8 2
/bin/busybox mknod -m 644 /dev/sda3 b 8 3
/bin/busybox mknod -m 644 /dev/sda4 b 8 4
#/bin/busybox mknod -m 644 /dev/sr0 b 11 0
/bin/busybox mkdir /proc
/bin/busybox mkdir /target

exec /bin/init-tiny

# ---