#!/bin/sh

if ufw status|grep 'Status: active' 1>/dev/null; then
  echo 'ufw is already active'
  exit 0
fi

ufw --force enable
