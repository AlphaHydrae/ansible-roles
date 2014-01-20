#!/bin/sh
GIT=/opt/local/bin/git

if ls /Users/$1/Projects/$3 &>/dev/null; then
  echo "$2/$3 is already cloned"
  exit 0
fi

cd /Users/$1/Projects && $GIT clone git@github.com:$2/${3}.git
