#!/bin/bash
PROG_NAME=$0
ARGC=$#
ARGV=$@
STOW=$(which stow)

usage() {
  echo "Usage: $0 [programs]"
}

all() {
  find . -maxdepth 1 -type d -not -path '\./.*' -a -not -path '.' -exec basename {} \;
}

if [ $ARGC -eq 0 ]; then
  usage
  exit 0
fi

for PROG in $ARGV; do
  case $PROG in
    all)
      ARGV=$(all)
      ;;
    *)
      stow -d $(pwd) -t ~ $PROG
      ;;
  esac
done
