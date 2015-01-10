#!/bin/sh
KEY="$1"
SERVER="$2"

if gpg --list-keys "$KEY" &>/dev/null; then
  echo "Key $KEY already imported"
  exit 0
fi

if [ -z "$SERVER" ]; then
  SERVER="hkp://keys.gnupg.net"
fi

gpg --keyserver "$SERVER" --recv-keys "$KEY"
