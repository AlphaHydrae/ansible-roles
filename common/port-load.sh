#!/bin/sh
PORT=/opt/local/bin/port

if launchctl list|grep "$1" &>/dev/null; then
  echo "$1 is already loaded"
  exit 0
fi

$PORT load "$1"
