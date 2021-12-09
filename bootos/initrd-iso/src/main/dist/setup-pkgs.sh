#!/bin/busybox ash
# ---
export PATH=/sbin:/bin

for x in filesystem busybox toybox rc-system klish klish-lua ttyd coredns; do
  echo "installing $x ...."
  cd /mnt/root
  rpm2cpio /mnt/cdrom/rpms/baseos-$x-*.rpm | cpio -id
done
cp /mnt/cdrom/rpms/fake-basesystem*.rpm /mnt/root/

cd /mnt/root
touch /mnt/root/first-boot

DISTRO_PKGS="base epel appstream perl custom"

for D in ${DISTRO_PKGS}; do
  echo "group ---> $D <---"
  if [ -d /mnt/cdrom/distro-$D ]; then
    for x in /mnt/cdrom/distro-$D/*.rpm; do
      echo "installing $x ...."
      cd /mnt/root
      rpm2cpio "$x" | cpio -id
      rm -rf usr/share/man
      rm -rf usr/share/doc
      rm -rf usr/lib/.build-id
    done
  fi
done

if [ -f /mnt/cdrom/perl.mod.list ]; then
  cp /mnt/cdrom/perl.mod.list /mnt/root/
fi

cat > /mnt/root/etc/ld.so.conf.d/default.conf <<_EOF_
# default directories
/usr/local/lib
/usr/lib
/usr/lib64
/lib
/lib64

_EOF_

echo "exclude=kernel* dracut* grub* setup basesystem filesystem systemd systemd-udev" >> /mnt/root/etc/dnf/dnf.conf

echo "VERSION_ID=\"8\"" >> /mnt/root/etc/os-release

echo "PermitEmptyPasswords=yes" >> /mnt/root/etc/ssh/sshd_config

echo "/usr/lib/bmap/de.bmap" > /mnt/root/etc/keymap.conf

echo "# Appliance NanoOS $(uname -m) $(uname -s) $(uname -r)" > /mnt/root/etc/release.conf
echo "# version=$(cat /mnt/cdrom/VERSION)" >> /mnt/root/etc/release.conf
echo "# v-build=$(cat /mnt/cdrom/BUILD)" >> /mnt/root/etc/release.conf
echo "# v-stamp=$(cat /mnt/cdrom/STAMP)" >> /mnt/root/etc/release.conf

mkdir -p /mnt/root/usr/lib/psf/
cp /mnt/cdrom/*.psf /mnt/root/usr/lib/psf/
echo "/usr/lib/psf/ter-v16n.psf" > /mnt/root/etc/consolefont.conf


# ---