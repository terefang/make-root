#!/usr/bin/env bash
#
export PATH=/usr/klish/bin:/usr/bin:/usr/sbin:/bin:/sbin
export SHELL=/bin/bash
#
exec /usr/klish/bin/clish -l \
  -x /etc/klish/base:/etc/klish/startup:/etc/klish/system \
  --utf8 --log --timeout=60 --histsize=100
#
