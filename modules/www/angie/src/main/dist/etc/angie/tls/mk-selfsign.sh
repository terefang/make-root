#!/usr/bin/env bash

XDIR=$(cd $(dirname $0) && pwd)
XNAME="$1"

certtool -p --rsa --bits 2048 > ${XDIR}/server-selfsign.key

cat > ${XDIR}/server-selfsign.tmpl <<EOT
#
# X.509 Certificate options
#
# DN options
#organization = "Acme Services"
#unit = "Acme Services"
#state = "Acme"
#country = AC

cn = "${XNAME}"

expiration_days = 9150
#activation_date = "2004-02-29 16:21:42"
#expiration_date = "2030-01-31 12:34:56"

# X.509 v3 extensions

# A dnsname in case of a WWW server.
dns_name = "${XNAME}"
dns_name = "*.${XNAME}"
dns_name = "w3.${XNAME}"
dns_name = "*.w3.${XNAME}"

tls_www_server
tls_www_client

signing_key
encryption_key

EOT

certtool -s --template ${XDIR}/server-selfsign.tmpl --load-privkey ${XDIR}/server-selfsign.key > server-selfsign.crt