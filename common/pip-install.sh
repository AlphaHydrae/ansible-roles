#!/bin/sh
PIP=/opt/local/bin/pip

if $PIP freeze|grep "$1" &>/dev/null; then
  echo "$1 is already installed"
  exit 0
fi

$PIP install "$1"
