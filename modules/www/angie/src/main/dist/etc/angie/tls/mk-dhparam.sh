#!/usr/bin/env bash

XDIR=$(cd $(dirname $0) && pwd)

certtool --get-dh-params > ${XDIR}/dhparam.pem
openssl dhparam -2 2048 >> ${XDIR}/dhparam.pem

exit 0

#echo "#" > ${XDIR}/dhparam.pem
#for x in $(seq 2048 2048 8192); do
#  openssl dhparam -2 $x >> ${XDIR}/dhparam.pem
#  certtool --generate-dh-params --bits $x >> ${XDIR}/dhparam.pem
#  openssl dhparam -5 $x >> ${XDIR}/dhparam.pem
#done