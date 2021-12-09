#!/bin/busybox ash
# ---

export PATH=/sbin:/bin

/bin/busybox ln -s /bin /sbin
/bin/busybox mkdir /dev
/bin/busybox mknod -m 644 /dev/null c 1 3
/bin/busybox mknod -m 644 /dev/tty c 5 0 >/dev/null 2>/dev/null
/bin/busybox mknod -m 644 /dev/tty0 c 4 0 >/dev/null 2>/dev/null
/bin/busybox mknod -m 644 /dev/console c 5 1 >/dev/null 2>/dev/null
/bin/busybox mknod -m 644 /dev/loop0 b 7 0 >/dev/null 2>/dev/null
/bin/busybox mknod -m 666 /dev/ttyS0 c 4 64 >/dev/null 2>/dev/null

for x in $(/bin/busybox --list); do
  /bin/busybox ln -s /bin/busybox "/bin/$x" >/dev/null 2>/dev/null
done

for x in $(/bin/toybox); do
  /bin/busybox ln -s /bin/toybox "/bin/$x" >/dev/null 2>/dev/null
done

mkdir /etc
touch /etc/fstab

mkdir /tmp
mount -t tmpfs tmpfs /tmp
mkdir /proc
mount -t proc proc /proc
ln -sf /proc/mounts /etc/mtab

mkdir /sys
mount -t sysfs sysfs /sys
mount -t tmpfs devtmpfs /dev
mknod -m 644 /dev/sda b 8 0
mknod -m 644 /dev/sda1 b 8 1
mknod -m 644 /dev/sda2 b 8 2
mknod -m 644 /dev/sda3 b 8 3
mknod -m 644 /dev/sda4 b 8 4
mknod -m 644 /dev/sr0 b 11 0
mkdir /dev/pts
mount -t devpts devpts /dev/pts
mkdir /dev/shm
mount -t tmpfs tmpfs /dev/shm

mdev -s

mkdir -p /target
mkdir -p /mnt/boot
mkdir -p /mnt/root
mkdir -p /mnt/apps
mkdir -p /mnt/data
mkdir -p /mnt/cdrom

mount /dev/sr0 /mnt/cdrom

if [ -f /usr.cpio ]; then
  mkdir /usr
  cpio -id < /usr.cpio
fi

for c in $(cat /proc/cmdline); do
    case $c in
        type=install)
            /install-system.sh sda
            ;;
        *)
            ;;
    esac
done


oneit -c /dev/tty0 hush

/bin/busybox hush


# ---