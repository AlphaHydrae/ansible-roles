#!/bin/sh
PORT=/opt/local/bin/port

if $PORT -qv installed|grep "$1" &>/dev/null; then
  echo "$1 is already installed"
  exit 0
fi

$PORT install "$1" "$2"
