#!/usr/bin/env bash

exec /usr/bin/dialog \
  --insecure \
  --output-fd 1 \
  --mixedform "Login" 0 0 0 \
  "Username :" 1 1 "Kiran" 1 12 20 0 0 \
  "Password :" 2 1 ""  2 12  20 0 1
