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

sgdisk -o /dev/${disk}
sgdisk -n 1:2048:$((2048+2048*512-1)) -c 1:"EFIBIOS" -t 1:ef00 -A 1:set:2 -p /dev/${disk}
sgdisk -n 2:$((2048+2048*512)):$((2048+2048*1024-1)) -c 2:"SWAP" -t 2:8200 -p /dev/${disk}
sgdisk -n 3:$((2048+2048*1024)):$((2048+2048*4096-1)) -c 3:"SYSTEM" -t 3:8300 -p /dev/${disk}
sgdisk -n 4:$((2048+2048*4096)):$((2048+2048*6144-1)) -c 4:"APPS" -t 4:8300 -p /dev/${disk}
sgdisk -n 5:$((2048+2048*6144)):: -c 5:"DATA" -t 5:8300 -p /dev/${disk}

dd if=/dev/zero of=/dev/${disk}1 bs=1024 count=1024
dd if=/dev/zero of=/dev/${disk}2 bs=1024 count=1024
dd if=/dev/zero of=/dev/${disk}3 bs=1024 count=1024
dd if=/dev/zero of=/dev/${disk}4 bs=1024 count=1024
dd if=/dev/zero of=/dev/${disk}5 bs=1024 count=1024

mkfs.vfat -F 32 -v -n EFIBIOS /dev/${disk}1
mkswap -L Q42SWAP /dev/${disk}2

mkfs.ext4 -j -U "${ruid}3" -L Q42ROOT /dev/${disk}3
mkfs.ext4 -j -U "${ruid}4" -L Q42APPS /dev/${disk}4
mkfs.ext4 -j -U "${ruid}5" -L Q42DATA /dev/${disk}5

