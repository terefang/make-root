#!/bin/sh
# ********** FILE SYSTEM CHECK

case "$1" in
  start)
    echo "checking filesystem ..."
    fsck.ext4 /dev/sda3
    RET=$?
    if [ "x$RET" != "x0" ]; then
      exit 1
    fi
    echo "remounting read-write ..."
    mount -t proc proc /proc
    mount -o remount,rw /
    swapon -a
    mount -a
    for i in /tmp /var/run; do
      rm -vfr $i/.* 2>/dev/null
      rm -vfr $i/* 2>/dev/null
    done
    mount -t tmpfs tmpfs /tmp
    mount -t sysfs sysfs /sys
    mount -t tmpfs tmpfs /run
    [ -d /dev/shm ] || mkdir /dev/shm
    mount -t tmpfs tmpfs /dev/shm
    [ -d /dev/pts ] || mkdir /dev/pts
    mount -t devpts devpts /dev/pts
    cd /dev && mdev -s

    mount /dev/sda4 /apps
    mount /dev/sda5 /data

    ;;
  stop)
    echo "remounting read-only ..."
    mount -o remount,ro /data
    mount -o remount,ro /apps
    umount /dev/pts
    umount /dev/shm
    umount /run
    umount /sys
    mount -o remount,ro /
    echo "unmounting ..."
    umount /proc
    umount -a
    swapoff -a
    ;;
  *) exit 1
    ;;
esac

