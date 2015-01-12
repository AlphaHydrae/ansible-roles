# FIXME: use ansible's setype option of file modules

FILE="$1"
TYPE="$2"

if ls -Z "$1"|grep "$2" &>/dev/null; then
  echo "$1 is already in security context $2"
  exit 0
fi

chcon -Rt "$2" "$1"
