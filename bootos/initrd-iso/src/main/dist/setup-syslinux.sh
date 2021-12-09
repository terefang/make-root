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

cd /mnt/boot
gunzip -c /mnt/cdrom/syslinux.cpio.gz | cpio -id
cp /mnt/cdrom/bzImage ./
cp /mnt/cdrom/initrd-tiny.cpio.gz ./

cat > /mnt/boot/syslinux.cfg <<__EOT__
default linux-vesa
#FONT /ter-i16n.psf
prompt 1
timeout 50

label linux
   kernel /bzImage
   initrd /initrd-tiny.cpio.gz
   append mitigations=off root=UUID=${ruid}3 ro rdinit=/init fsinit=/sbin/init

label linux-vesa
   kernel /bzImage
   initrd /initrd-tiny.cpio.gz
   append VESAMODE=true vga=775 mitigations=off root=UUID=${ruid}3 ro rdinit=/init fsinit=/sbin/init

__EOT__

dd if=/mnt/cdrom/syslinux/gptmbr_c.bin of=/dev/${disk} bs=440 count=1

/mnt/cdrom/syslinux/syslinux-nomtools -i -f /dev/${disk}1

exit 0;