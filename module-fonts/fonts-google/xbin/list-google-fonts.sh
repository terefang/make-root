#!/usr/bin/env bash

case "$1" in
  -noto)
    curl https://fonts.google.com/metadata/fonts  2>/dev/null \
      | jq -r '.familyMetadataList[].family' \
      | tr ' ' '+' \
      | grep '^Noto'
    ;;
  *)
    curl https://fonts.google.com/metadata/fonts  2>/dev/null \
      | jq -r '.familyMetadataList[].family' \
      | tr ' ' '+' \
      | grep -v '^Noto'
    ;;
esac