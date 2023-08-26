#!/bin/sh

sgdisk --zap-all /dev/sda
sgdisk -n 1:1M:255M -t 1:EF00 /dev/sda
sgdisk -n 2:256M:1023M -t 2:8300 /dev/sda
sgdisk -n 3:1024M:0 -t 3:8200 /dev/sda

mkfs.vfat -v -n BOOT /dev/sda1
mkswap -L SWAP /dev/sda2
mkfs.ext2 -L ROOT /dev/sda3
