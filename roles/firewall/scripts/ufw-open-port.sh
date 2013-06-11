#!/bin/sh

PORT=$1

if ufw status|grep $PORT|grep ALLOW 1>/dev/null; then
  echo "Port ${PORT} is already open"
  exit 0
fi

ufw allow $PORT
