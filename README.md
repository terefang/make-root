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
[_] gmp		        #development
[_] mpfr		    #development
[_] mpc		        #development
[x] pkg-config	    #development
[x] ncurses
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
 