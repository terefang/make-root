#!/bin/busybox ash
# ---
export PATH=/sbin:/bin

disk=sda
ruid=$(uuidgen)

if [ ! -z "$1" ]; then
    disk=$1
fi

if [ ! -z "$2" ]; then
    ruid=$2
fi

ruid=$(echo $ruid | cut -b 1-35)

#         1         2         3
#12345678901234567890123456789012345678
#bda5c60f-a39b-4b67-a969-c85d88fe12e1

/setup-disk.sh "${disk}" "${ruid}"

mount /dev/${disk}1 /mnt/boot
mount /dev/${disk}3 /mnt/root
mount /dev/${disk}4 /mnt/apps
mount /dev/${disk}5 /mnt/data

/setup-pkgs.sh

mkdir /mnt/root/apps
mkdir /mnt/root/data

/setup-syslinux.sh "${disk}" "${ruid}"

/setup-eth.sh

cd /
sync
umount /mnt/data
umount /mnt/apps
umount /mnt/root
umount /mnt/cdrom
echo "#"
read -p "system installed, to reboot press ENTER"

for x in $(seq 10 -1 1); do echo $x; sleep 1; done

reboot -f

# ---