#!/bin/busybox ash

IFCONFIG="/bin/busybox ifconfig"
XTMP="/tmp/$(/bin/toybox uuidgen)-123456"
IFACELIST=$($IFCONFIG -a | grep ^e |cut -f1 -d' '|sort)
DIALOG="dialog --no-lines"

DOPTS="--checklist Interface-Configuration -1 50 0 "

$DIALOG --yesno "setup networking ... ?" 5 50
R=$?
if [ "$R" = "1" ]; then
exit
fi

for x in $IFACELIST; do
  HW=$($IFCONFIG $x |fgrep HWaddr|awk '{print $5}')
  DOPTS="${DOPTS} $x \"$HW\" 0"
done

$DIALOG $DOPTS 2> $XTMP
R=$?
IFACELIST=$(cat $XTMP)

if [ "$R" = "0" ]; then

  for x in $IFACELIST; do
    DOPTS="--no-cancel --menu ${x}-Configuration-type -1 50 0 static static-assignment dhcp dynamic-assignment"
    $DIALOG $DOPTS 2> $XTMP
    TYPE=$(cat $XTMP)
    IFACE=$(echo "${x}" | tr '.;:-' '____')
    # /etc/network/interfaces.d/${IFACE}
    case ${TYPE} in
      static)
        R=1
        while [ "$R" = "1" ]; do
          $DIALOG --inputbox "${x} IP Address" -1 50 2> $XTMP
          IADDR=$(cat $XTMP)
          $DIALOG --inputbox "${x} IP Netmask" -1 50 2> $XTMP
          IMASK=$(cat $XTMP)
          $DIALOG --inputbox "${x} IP Gateway" -1 50 2> $XTMP
          IGATE=$(cat $XTMP)
          $IFCONFIG ${x} up
          $IFCONFIG ${x} add ${IADDR} netmask ${IMASK}
          G=""
          if [ -z "$IGATE" ]; then
            G="#"
            $DIALOG --prgbox "echo checking connectivity ... ; ping -I ${IADDR} -W 1 -w 10 -c 10 255.255.255.255" 25 70
          else
            $DIALOG --prgbox "echo checking connectivity ... ; ping -I ${IADDR} -W 1 -w 10 -c 10 ${IGATE}" 25 70
          fi
          $IFCONFIG ${x} down
          $DIALOG --pause "continue(=yes) or re-configure(=no)" 10 50 60
          R=$?
        done
        cat <<_EOF_
#
auto ${x}
#
iface ${x} inet static
    address ${IADDR}
    netmask ${IMASK}
${G}   gateway ${IGATE}
#
_EOF_
        ;;
      dhcp)
        cat <<_EOF_
#
auto ${x}
#
iface ${x} inet dhcp
#
_EOF_
        ;;
      *)
        ;;
    esac
  done

fi
