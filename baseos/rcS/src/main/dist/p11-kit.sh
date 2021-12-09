#!/usr/bin/env bash
#
if [ ! -L /usr/lib64/libnssckbi.so ]; then
  cd /usr/lib64/
  ln -sfT ./pkcs11/p11-kit-trust.so libnssckbi.so
fi
#