#!/bin/zsh

set -e -u

. ./host/pushcommon.sh

pushsrc() {
  dopushcompile net/nwfmqtt.lua
  dopushcompile _external/lcd1602.lua
  dopushcompile examples/ctfws/ctfws.lua
  dopushcompile examples/ctfws/ctfws-lcd.lua
  dopushcompile examples/ctfws/init3.lua
  dopushcompile examples/ctfws/init2.lua
}

if [ -n "${2:-}" ]; then
  if [ -d examples/ctfws/conf/$2 ]; then CONFDIR=examples/ctfws/conf/$2
  elif [ -d $1 ]; then CONFDIR=$2
  else echo "Not a directory: $2"; exit 1
  fi
fi

pushconf() {
  if [ -z "${CONFDIR:-}" ]; then
    echo "Asked to push config without specifying?"
    exit 1
  fi
  for f in ${CONFDIR}/*; do
    dopush "$f"
  done
}

case "${1:-}" in
  all)
    pushconf
    pushsrc
    ./host/pushinit.sh
    ;;
  both)
    pushconf
    pushsrc
    ;;
  src)
    pushsrc
    ;;
  conf)
    pushconf
    ;;
  *)
    echo "Please specify push mode: {conf,src,both,all}"
    exit 1
    ;;
esac
