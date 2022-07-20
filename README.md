# DONT USE THIS REPO

this is an evolutionary project !

reality storms happen and reformat the whole concept.

# A Proof Of Concept ...

... for building an iso installer, root file system and basic package management on top  

https://raymii.org/s/tutorials/Building_IPK_packages_by_hand.html

http://git.yoctoproject.org/cgit/cgit.cgi/opkg-utils/snapshot/opkg-utils-0.5.0.tar.gz

https://gitlab.com/scallopedllama/opkg-package

## TODO -- Linux From Scratch Packages

https://github.com/landley/control-images/blob/master/images/lfs-bootstrap/mnt/package-list

```
setup
zlib
m4		        #development
gmp		        #development
mpfr		    #development
mpc		        #development
sed		        #busybox
pkg-config	    #development
ncurses
#gettext		#development internationalization
gettext-stub	#development internationalization
util-linux
e2fsprogs	    #busybox
coreutils	    #busybox
gawk		    #busybox
iana-etc
bison		    #development
procps		    #busybox
grep		    #busybox
readline	    #development
bash		    #development
libtool		    #development pointless
gdbm
inetutils	    #busybox?
perl
autoconf	    #development
automake	    #development
bzip2		    #busybox
diffutils	    #busybox
file
findutils	    #busybox
flex		    #development
groff
gzip		    #busybox
iproute2	    #busybox?
kbd		        #busybox?
less		    #busybox
make		    #development
xz		        #busybox
man-db
module-init-tools #busybox
patch		    #busybox
psmisc		    #busybox?
shadow		    #busybox
sysklogd	    #busybox
sysvinit	    #busybox
tar		        #busybox
texinfo		    #development pointless
udev		    #busybox
vim             #busybox
```

## TODO -- Short List Packages

```
[_] setup
[x] zlib
[x] m4		        #development
[x] gmp		        #development
[_] mpfr		    #development
[_] mpc		        #development
[x] pkg-config	    #development
[x] netbsd-curses (+terminfo +termcap)
[x] grep gawk sed patch diff(utils)
[_] #gettext		#development internationalization
[_] gettext-stub	#development internationalization
[_] iana-etc
[x] bison		    #development
[x] readline	    #development
[x] bash		    #development
[x] libtool		    #development pointless **BROKEN**
[x] flex		    #development
[x] gdbm **FIXME**
[_] perl
[_] autoconf	    #development
[_] automake	    #development
[x] file
[x] groff
[x] urw-base35-fonts+extra
[x] make		    #development
[_] man-db
[_] texinfo		    #development pointless
```

## TODO -- Additional Packages

```
[x] fonts-adf
[x] fonts-croscore
[x] fonts-crosextra
[x] fonts-google
[_] linux-pam -- https://github.com/linux-pam/linux-pam
[_] pam-ldap -- https://github.com/PADL/pam_ldap
[_] pam-tacplus -- https://github.com/kravietz/pam_tacplus
```
 
## References

https://www.linuxfromscratch.org/lfs/view/stable/part3.html

### Compiling a Cross-Toolchain

NO! we get our static musl cross compiler from either:

* https://musl.cc/x86_64-linux-musl-cross.tgz
* https://landley.net/toybox/downloads/binaries/toolchains/latest/x86_64-linux-musl-cross.tar.xz

which should be gcc 9/10/11-ish and musl 1.2.x (eg. musl, GCC, binutils, GMP, MPFR, MPC).

[x] Binutils
[x] GCC
[x] Linux API Headers (included with musl)
[x] Glibc (musl)
[x] Libstdc++

#### extra utilities

we want these for packaging

[x] opkg (aka. ipkg package manager)
[x] opkg-tools (actually needs working python)

##### prerequisites

[x] expat
[x] zlib
[x] bzip2
[x] zstd
[x] xz
[x] libressl
[x] libarchive
[x] libsolv
[x] curl

### Cross Compiling Temporary Tools

we cross-compile to static binaries, so the tools run everywhere.

[x] M4
[x] netbsd-curses (not ncurses)
[x] Bash
[x] busybox (Coreutils)
[x] toybox (Coreutils)
[x] Diffutils
[x] File
[x] Findutils
[x] Gawk (basic awk is in busybox)
[x] Grep (basic grep is in busybox)
[x] Make
[x] Patch
[x] Sed (basic sed is in busybox)
[x] Tar (basic untar is in busybox, bsdtar is in libarchive)
[x] libcap-ng
[x] Util-linux

#### rebuilding glibc runtime and build system for sysroot

[_] Linux-5.16.9 API Headers
[_] glibc (2.35)
[_] Binutils-2.38 (aka. native)
[_] GCC-11.2.0 (aka. native)

### Entering Chroot and Building Additional Temporary Tools

[_] Libstdc++
[_] Gettext-0.21
[_] Bison-3.8.2
[_] Perl-5.34.0
[_] Python-3.10.2
[_] Texinfo-6.8
[_] libcap-ng
[_] Util-linux-2.37.4

### next

https://www.linuxfromscratch.org/lfs/view/stable/chapter08/chapter08.html

[_] Package Management
[_] Man-pages-5.13
[_] Iana-Etc-20220207
[_] Glibc-2.35
[_] Zlib-1.2.11
[_] Bzip2-1.0.8
[_] Xz-5.2.5
[_] Zstd-1.5.2
[_] File-5.41
[_] Readline-8.1.2
[_] M4-1.4.19
[_] Bc-5.2.2
[_] Flex-2.6.4
[_] Tcl-8.6.12
[_] Expect-5.45.4
[_] DejaGNU-1.6.3
[_] Binutils-2.38
[_] GMP-6.2.1
[_] MPFR-4.1.0
[_] MPC-1.2.1
[_] Attr-2.5.1
[_] Acl-2.3.1
[_] Libcap-2.63
[_] Shadow-4.11.1
[_] GCC-11.2.0
[_] Pkg-config-0.29.2
[_] Ncurses-6.3
[_] Sed-4.8
[_] Psmisc-23.4
[_] Gettext-0.21
[_] Bison-3.8.2
[_] Grep-3.7
[_] Bash-5.1.16
[_] Libtool-2.4.6
[_] GDBM-1.23
[_] Gperf-3.1
[_] Expat-2.4.6
[_] Inetutils-2.2
[_] Less-590
[_] Perl-5.34.0
[_] XML::Parser-2.46
[_] Intltool-0.51.0
[_] Autoconf-2.71
[_] Automake-1.16.5
[_] OpenSSL-3.0.1
[_] Kmod-29
[_] Libelf from Elfutils-0.186
[_] Libffi-3.4.2
[_] Python-3.10.2
[_] Ninja-1.10.2
[_] Meson-0.61.1
[_] Coreutils-9.0
[_] Check-0.15.2
[_] Diffutils-3.8
[_] Gawk-5.1.1
[_] Findutils-4.9.0
[_] Groff-1.22.4
[_] GRUB-2.06
[_] Gzip-1.11
[_] IPRoute2-5.16.0
[_] Kbd-2.4.0
[_] Libpipeline-1.5.5
[_] Make-4.3
[_] Patch-2.7.6
[_] Tar-1.34
[_] Texinfo-6.8
[_] Vim-8.2.4383
[_] Eudev-3.2.11
[_] Man-DB-2.10.1
[_] Procps-ng-3.3.17
[_] Util-linux-2.37.4
[_] E2fsprogs-1.46.5
[_] Sysklogd-1.5.1
[_] Sysvinit-3.01