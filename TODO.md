## packages

https://github.com/chmln/sd/releases/download/v1.1.0/sd-v1.1.0-x86_64-unknown-linux-gnu.tar.gz

https://github.com/troglobit/editline

https://gameoftrees.org/index.html

https://github.com/fish-shell/fish-shell/releases/download/4.3.3/fish-4.3.3-linux-x86_64.tar.xz

https://github.com/dundee/gdu/releases/download/v5.32.0/gdu_linux_amd64_static.tgz

https://github.com/rofl0r/ncdu

https://github.com/pranshuparmar/witr/releases/tag/v0.1.7

https://github.com/ollama/ollama/releases/download/v0.14.2/ollama-linux-amd64.tar.zst
https://github.com/ollama/ollama/releases/download/v0.14.2/ollama-linux-amd64-rocm.tar.zst

https://github.com/tursodatabase/turso/releases/download/v0.4.3/turso_cli-x86_64-unknown-linux-gnu.tar.xz

https://github.com/xplshn/dbin

procps-ng

lazygit

https://github.com/jesseduffield/lazydocker/releases/download/v0.24.3/lazydocker_0.24.3_Linux_x86_64.tar.gz

https://github.com/eza-community/eza/releases/download/v0.23.4/eza_x86_64-unknown-linux-musl.tar.gz

https://github.com/ajeetdsouza/zoxide/releases/download/v0.9.8/zoxide-0.9.8-x86_64-unknown-linux-musl.tar.gz

https://github.com/BurntSushi/ripgrep/releases/download/15.1.0/ripgrep-15.1.0-x86_64-unknown-linux-musl.tar.gz

https://github.com/bgreenwell/xleak/

https://github.com/jdx/mise/releases/download/v2025.10.10/mise-v2025.10.10-linux-x64-musl

https://github.com/ducaale/xh/releases/download/v0.25.0/xh-v0.25.0-x86_64-unknown-linux-musl.tar.gz
https://github.com/eradman/entr
https://github.com/sharkdp/fd/releases/download/v10.2.0/fd-v10.2.0-x86_64-unknown-linux-musl.tar.gz

https://github.com/atuinsh/atuin
https://github.com/yorukot/superfile

https://github.com/PhilipHazel/NE

https://github.com/chrismytton/shoreman


https://github.com/orf/gping

https://github.com/liljencrantz/crush

https://github.com/theryangeary/choose

https://github.com/chmln/sd

https://github.com/soveran/map

https://github.com/sxyazi/yazi

https://dl.exactcode.de/oss/minised/minised-1.16.tar.gz
https://github.com/tar-mirror/minised/

https://sed.sourceforge.io/grabbag/ssed/sed-3.62.tar.gz

https://github.com/jart/bestline

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


# MK-DISTRO

make a simple distro, like from scratch bu more opinionated.

## SYSTEM

* the base system uses /system
* all binaries are statically compiled to work regardless of patch state.
* all binaries are compiled against musl-c.
* the system toolchain is taken prebuild from skanet.org

# groups

* kernel - (under /boot)
* system - (under /system)
* base - (under /usr) - blibs, bserver, bprogs
* xbase - (under /x11) - xlibs, xserver, xprogs
* ports - (under /local)

# DONE

* toolchain from musl.cc
* musl-bsdcompat
* musl-ftscompat
* musl-obstack
* libxcrypt
* zlib
* busybox
* make
* m4

# PRIORITY

* libressl
* toybox
* sysbox
* netbsd-ncurses
* libedit
* (d)ash
* libarchive - nice bsdtar/cpio/unzip utils
* opkg - needs libarchive, etc

# NOTES

FreeBSD has:

* openssl
* libmd
* bz2
* zlib
* libedit
* libexpat
* lua
* liblzma/xz
* sqlite
* zstd
* ncurses
* libradius
* libtacplus
* nss_tacplus



# TODO

* bash
* bzip2
* coreutils
* cpio
* dialog
* dosfstools
* file
* findutils
* gawk
* gptfdisk
* grep
* gzip
* inotify-tools
* kbd
* less
* logrotate
* nvi
* pam
* patch
* pciutils
* plzip
* procps-ng
* sed
* shadow
* sharutils
* sysfsutils
* tar
* time
* tree
* util-linux
* xfsprogs
* xz

#stable:	6.16.3
#stable:	6.15.11
#longterm:	6.12.43
#longterm:	6.6.102
#longterm:	6.1.148
#longterm:	5.15.189
#longterm:	5.10.240
#longterm:	5.4.296
#longterm:  4.19.309
#longterm:  4.14.336  
#longterm:  4.9.337
#longterm:  4.4.302
#longterm:  3.16.85
#longterm:  3.12.74
#longterm:  3.10.108
#longterm:  3.4.113




| DISTRO              | KERNEL  | GLIBC | BINUTILS |  GCC   |    GA     |    EOS    |    EOE    |    EOL    |
|:--------------------|:-------:|:-----:|:--------:|:------:|:---------:|:---------:|:---------:|:---------:|
| almalinux el 9      |  5.14   | 2.34  |  2.35.2  | 11.4.1 |     -     |  2032     |     -     |     -     |
| almalinux el 10     |  6.12   | 2.39  |  2.41    | 14.2.1 |     -     |  2032     |     -     |     -     |
| -                   |    -    |   -   |    -     |   -    |     -     |     -     |     -     |     -     |
| Centos 5            | 2.6.18  |  2.5  |   2.17   | 4.1.2  | 2014-09   |  2017-03  |     -     |     -     |
| Centos 6            | 2.6.32  | 2.12  |   2.20   | 4.4.7  | 2018-07   |  2020-11  |     -     |     -     |
| Centos 7            |  3.10   | 2.17  |   2.27   | 4.8.5  | 2020-04   |  2024-08  |     -     |     -     |
| Centos 8            |  4.18   | 2.28  |   2.30   | 8.5.0  | 2021-11   |  2021-12  |     -     |     -     |
| Centos 9            |  5.14   | 2.34  |  2.35.2  | 11.5.0 | 2021-12   |  -        |     -     |     -     |
| Centos 10           |  6.12   | 2.39  |   2.41   | 14.2.1 | 2025-10   |  -        |     -     |     -     |
| -                   |    -    |   -   |    -     |   -    |     -     |     -     |     -     |     -     |
| Debian 9            | 4.9.30  | 2.24  |   2.28   | 6.3.0  | 2017-06   | 2020-07   |     -     |     -     |
| Debian 10           | 4.9.118 | 2.28  |  2.31.1  | 8.3.0  | 2019-07   | 2022-09   |     -     |     -     |
| Debian 11           | 5.10.84 | 2.31  |  2.35.2  | 10.2.1 | 2021-08   | 2024-08   |     -     |     -     |
| Debian 12           | 6.1.27  | 2.36  |   2.40   | 12.2.0 | 2023-06   | 2026-06	 |     -     |     -     |
| Debian 13           | 6.12.38 | 2.41	 |   2.44   | 14.2.0 | 2025-08   |     -     |     -     |     -     |
| -                   |    -    |   -   |    -     |   -    |     -     |     -     |     -     |     -     |
| Ubuntu 16.04/xenial |   4.4   | 2.23  |  2.26.1  |  5.5   | Apr 2016	 | Apr 2021	 | Apr 2026  | 	Apr 2028 |
| Ubuntu 18.04/bionic |  4.15   | 2.27  |   2.30   |  7.5   | Apr 2018	 | May 2023	 | Apr 2028	 | Apr 2030  |
| Ubuntu 20.04/focal  |   5.4   | 2.31  |   2.34   |  10,5  | Apr 2020	 | May 2025	 | Apr 2030	 | Apr 2032  |
| Ubuntu 22.04/jammy  |  5.15   | 2.35  |   2.38   |  11.4  | Apr 2022	 | Apr 2027	 | Apr 2032	 | Apr 2034  |
| Ubuntu 23.04/mantic |   6.5   | 2.38  |   2.41   |  12.3  | Apr 2023  | Apr 2024  |     -     |     -     |
| Ubuntu 24.04/noble  |   6.8   | 2.39  |   2.42   |  13.2  | Apr 2024	 | Apr 2029	 | Apr 2034	 | Apr 2036  |


# jdk

* http://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops/R-3.8.2-201301310800/ecj-3.8.2.jar

* https://ftp.gnu.org/pub/gnu/classpath/classpath-0.98.tar.gz
* https://ftp.gnu.org/pub/gnu/classpath/classpath-0.99.tar.gz
* https://ftp.gnu.org/pub/gnu/classpath/gjdoc-0.7.9.tar.gz
* https://ftp.gnu.org/pub/gnu/classpath/inetlib-1.1.2.tar.gz
 
* https://ftp.gnu.org/pub/gnu/classpathx/activation-1.1.2.tar.gz
* https://ftp.gnu.org/pub/gnu/classpathx/jaxp-1.3.tar.gz
* https://ftp.gnu.org/pub/gnu/classpathx/mail-1.1.2.tar.gz
* https://ftp.gnu.org/pub/gnu/classpathx/servletapi/servletapi-3.0.1.tar.gz
 
* https://ftp.gnu.org/gnu/gnu-crypto/gnu-crypto-2.1.0.tar.gz
* https://ftp.gnu.org/gnu/gnu-crypto/releases/gnu-crypto-2.0.1.tar.gz
 
* https://sourceforge.net/projects/jamvm/files/jamvm/JamVM%202.0.0/jamvm-2.0.0.tar.gz/download
 
* https://sourceforge.net/projects/jamvm/files/jamvm/JamVM%201.5.4/jamvm-1.5.4.tar.gz/download
* https://www.chainguard.dev/unchained/fully-bootstrapping-java-from-source-in-wolfi
* https://archive.apache.org/dist/harmony/milestones/5.0/M15/apache-harmony-5.0-src-r991518-snapshot.tar.gz

* https://archive.apache.org/dist/harmony/milestones/6.0/M3/apache-harmony-6.0-src-r991881-snapshot.tar.gz
 
* github.com/wolfi-dev/os/blob/main/fastjar.yaml
* http://download.savannah.nongnu.org/releases/fastjar/fastjar-${{package.version}}.tar.gz
 
* github.com/wolfi-dev/os/blob/main/java-gcj-compat.yaml
 
* github.com/wolfi-dev/os/blob/main/gcc-6.yaml
