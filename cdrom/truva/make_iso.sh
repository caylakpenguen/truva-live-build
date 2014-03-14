#!/bin/bash
# ---------------------------------------------------
# Script to create bootable ISO in Linux
# usage: make_iso.sh [ /tmp/slax.iso ]
# author: Tomas M. <http://www.linux-live.org>
# ---------------------------------------------------

if [ "$1" = "--help" -o "$1" = "-h" ]; then
  echo "This script will create bootable ISO from files in curent directory."
  echo "Current directory must be writable."
  echo "example: $0 /tmp/truva.iso"
  exit
fi

CDLABEL="Truva Linux Live CDROM"
ISONAME="$1"

if [ "$ISONAME" = "" ]; then
   SUGGEST="../../`basename \`pwd\``.iso"
   SUGGEST="`readlink -f $SUGGEST`"
   echo -ne "Target ISO file name [ Hit enter for $SUGGEST ]: "
   read ISONAME
   if [ "$ISONAME" = "" ]; then ISONAME="$SUGGEST"; fi
fi

mkisofs -o "$ISONAME" -v -J -R -D -A "Truva Linux 2.0" -V "$CDLABEL" \
-no-emul-boot -boot-info-table -boot-load-size 4 \
-b truva/boot/isolinux.bin -c truva/boot/isolinux.boot ../.
