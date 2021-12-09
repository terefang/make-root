#!/usr/bin/env bash
#
PYTHON=/usr/libexec/platform-python
PVERSION=$($PYTHON -V | cut -f2 -d' ')
PVMAJOR=$(echo $PVERSION | cut -f1 -d.)
PVMINOR=$(echo $PVERSION | cut -f1-2 -d.)
#
for x in python python$PVMAJOR python$PVMINOR; do
  if [ ! -L /usr/bin/${x} ]; then
    cd /usr/bin/
    ln -sfT $PYTHON ${x}
  fi
done
#