#!/usr/bin/env bash

### EL7 8
#BASE=http://mirror.centos.org/centos/7/os/x86_64
#BASE=https://download-ib01.fedoraproject.org/pub/epel/7/x86_64
#BASE=https://download-ib01.fedoraproject.org/pub/epel/8/Everything/x86_64
#BASE=http://mirror.centos.org/centos/8/BaseOS/x86_64/os
#BASE=http://mirror.centos.org/centos/8/AppStream/x86_64/os
#REPODATA=$BASE/repodata
#REPOMDXML=$REPODATA/repomd.xml
#
#RPMXML=$BASE/$(curl $REPOMDXML |fgrep primary.xml.gz | cut -f2 -d'"')
#
#curl $RPMXML | gzip -dc | fgrep "name>perl"| cut -f2 -d'>'| cut -f1 -d'<'


### openwrt.org 21.02.1
#https://downloads.openwrt.org/releases/21.02.1/targets/x86/64/openwrt-21.02.1-x86-64-generic-kernel.bin
#https://downloads.openwrt.org/releases/21.02.1/targets/x86/64/openwrt-21.02.1-x86-64-rootfs.tar.gz
#
#BASE=https://downloads.openwrt.org/releases/21.02.1/packages/x86_64
#PREFIX=releases/21.02.1/packages/x86_64
## base  luci  packages  routing telephony
#FEEDS="base packages"
#
#for x in $FEEDS; do
#  mkdir -p "$1/$PREFIX/$x"
#  for y in Packages Packages.asc  Packages.gz Packages.manifest Packages.sig; do
#    curl "$BASE/$x/$y" > "$1/$PREFIX/$x/$y"
#  done
#  cd "$1/$PREFIX/$x"
#  for y in $(cat Packages|grep ^Filename:|cut -f2 -d' '); do
#    curl "$BASE/$x/$y" > "./$y"
#  done
#done

exit 0;

