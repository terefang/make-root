## packages

https://github.com/orf/gping

https://github.com/liljencrantz/crush

https://github.com/theryangeary/choose

https://github.com/chmln/sd

https://github.com/soveran/map

https://github.com/sxyazi/yazi

https://dl.exactcode.de/oss/minised/minised-1.16.tar.gz

https://sed.sourceforge.io/grabbag/ssed/sed-3.62.tar.gz

https://github.com/Orc/levee

tmux

aria3c

https://github.com/ifupdown-ng/ifupdown-ng

https://github.com/BurntSushi/ripgrep

https://github.com/sharkdp/fd
https://github.com/sharkdp/bat

https://www.jefftk.com/icdiff

https://the.exa.website/

https://github.com/junegunn/fzf

https://github.com/Xfennec/progress

ncdu

moreutils

https://github.com/github/hub

https://github.com/jonas/tig

https://cisofy.com/lynis

https://www.atoptool.nl

http://hisham.hm/htop

https://github.com/lebinh/ngxtop

mytop

pg_top

iotop

nmon

https://master.dl.sourceforge.net/project/loginx/loginx-1.4.tar.gz?viasf=1

https://github.com/tomnomnom/gron

https://github.com/gokrazy/freeze

[x] https://github.com/jedisct1/libsodium

https://github.com/jedisct1/minisign

https://github.com/jedisct1/libhydrogen

https://github.com/Taymindis/lfqueue
https://github.com/Taymindis/lfstack


## compilers

https://more.musl.cc/10.2.1/x86_64-linux-musl/x86_64-linux-musl-cross.tgz
https://more.musl.cc/10.2.1/x86_64-linux-musl/x86_64-linux-musl-native.tgz

https://more.musl.cc/11.2.1/x86_64-linux-musl/x86_64-linux-musl-cross.tgz
https://more.musl.cc/11.2.1/x86_64-linux-musl/x86_64-linux-musl-native.tgz

https://git.zv.io/toolchains/bootstrap/

## chroots

https://cdimage.ubuntu.com/ubuntu-base/releases/22.04.1/release/ubuntu-base-22.04.1-base-amd64.tar.gz

https://cdimage.ubuntu.com/ubuntu-base/releases/20.04.4/release/ubuntu-base-20.04.4-base-amd64.tar.gz

https://cdimage.ubuntu.com/ubuntu-base/releases/18.04.5/release/ubuntu-base-18.04.5-base-amd64.tar.gz

https://cdimage.ubuntu.com/ubuntu-base/releases/16.04.6/release/ubuntu-base-16.04.6-base-amd64.tar.gz

https://cdimage.ubuntu.com/ubuntu-base/releases/14.04.6/release/ubuntu-base-14.04.6-base-amd64.tar.gz

https://dl-cdn.alpinelinux.org/alpine/v${AVER%.*}/releases/${ACPU}/alpine-minirootfs-${AVER}-${ACPU}.tar.gz

https://dl-cdn.alpinelinux.org/alpine/v3.16/releases/x86_64/alpine-minirootfs-3.16.2-x86_64.tar.gz
https://dl-cdn.alpinelinux.org/alpine/v3.16/main/x86_64/APKINDEX.tar.gz
https://dl-cdn.alpinelinux.org/alpine/v3.16/community/x86_64/APKINDEX.tar.gz



## jdk bootstrap

https://www.chainguard.dev/unchained/fully-bootstrapping-java-from-source-in-wolfi

https://gist.github.com/bbidulock/6968e85305fe4009cdc5ad5f037cae09

https://aur.archlinux.org/cgit/aur.git/tree/?h=gcc6-gcj-ecj

pkgver=4.9
source=(http://mirrors.kernel.org/sources.redhat.com/java/ecj-${pkgver}.jar)
install -D -m644 $srcdir/ecj-${pkgver}.jar $pkgdir/usr/share/java/eclipse-ecj.jar

ecj1 -> #!/bin/sh
gij-6 -cp /usr/share/java/eclipse-ecj.jar \
    org.eclipse.jdt.internal.compiler.batch.GCCMain \
    ${1+"$@"}

https://github.com/wolfi-dev/os/blob/main/java-gcj-compat.yaml
https://github.com/wolfi-dev/os/blob/main/java-common.yaml


https://sourceforge.net/projects/phpfilesadmin/

## NATS

https://github.com/nats-io/nsc/releases/download/v2.10.2/nsc-linux-amd64.zip
https://github.com/nats-io/nats-server/releases/download/v2.10.25/nats-server-v2.10.25-linux-amd64.tar.gz
https://github.com/nats-io/nats-top/releases/download/v0.6.3/nats-top_0.6.3_linux_amd64.tar.gz
https://github.com/nats-io/nkeys/releases/download/v0.4.10/nkeys-v0.4.10-linux-amd64.zip

## http

https://github.com/oauth2-proxy/oauth2-proxy/releases/download/v7.8.1/oauth2-proxy-v7.8.1.linux-amd64.tar.gz

## chrome-os

https://dl.google.com/chromeos-flex/images/latest.bin.zip
