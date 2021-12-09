#!/usr/bin/env bash

REPO="https://download.rockylinux.org/pub/rocky/8/BaseOS/x86_64/os"
XARCH="x86_64,noarch"
TAG=$(uuidgen)
XTMP=/tmp/$TAG
XOUT=$XTMP
XQUERY=no
XPREREQS=no

while test "x$1" != "x--"; do
  case "$1" in
    -R|--repo*)
      shift
      REPO="$1"
      ;;
    -A|--arch*)
      shift
      XARCH="$1"
      ;;
    -T|--tmp)
      shift
      XTMP="$1"
      ;;
    -D|--dir*)
      shift
      XOUT="$1"
      ;;
    -Q|--query-only)
      XQUERY="yes"
      ;;
    -P|--prereq*)
      XPREREQS="yes"
      ;;
    *) echo "invalid oprion $1"
      exit 1
      ;;
  esac
  shift
done

shift

mkdir -p $XTMP

REPOBIN="repoquery --verbose -c /dev/null --archlist=$XARCH --repofrompath=$TAG,${REPO} "

function dl()
{
  xurl=$1
  xout=$2

  if test "x${xurl}" != "x"; then
    xfile=$(basename $xurl)
    if [ ! -e "${xout}/${xfile}" ]; then
      wget "${xurl}" -O "${xout}/${xfile}"
    else
      echo ${xfile}
    fi
  fi
}


for x in $*; do
  echo -n "$x --> "
  url=$($REPOBIN --location $x)
  echo $url
  if test "x${XQUERY}" != "xyes"; then
    dl "$url" "$XOUT"
  fi
  if test "x${XPREREQS}" = "xyes"; then
    for url in $($REPOBIN --requires --resolve --recursive --location $x); do
      echo $url
      if test "x${XQUERY}" != "xyes"; then
        dl "$url" "$XOUT"
      fi
    done
  fi
done

#ls -la ${XOUT}

rm -rf $XTMP

exit 0;

### exec

xbin/dl-from-repo.sh
  -R https://download.rockylinux.org/pub/rocky/8/BaseOS/x86_64/os
  -D $(pwd)/target
  -- bash tzdata glibc.x86_64 ncurses-libs.x86_64 ncurses-base glibc-common glibc-minimal-langpack
