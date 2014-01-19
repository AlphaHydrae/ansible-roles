#!/bin/sh
PORT=/opt/local/bin/port

if $PORT select --show "$1"|grep "$2" &>/dev/null; then
  echo "$2 is already active"
  exit 0
fi

$PORT select --set "$1" "$2"
