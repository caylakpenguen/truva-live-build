#!/bin/bash
# ---------------------------------------------------
# Script to create bootable ISO in Truva Linux
# Date: 16 - 03 - 2014
# author: CaylakPenguen <http://www.truvalinux.org.tr>
# ---------------------------------------------------

CDLABEL="Truva Linux Live CDROM"
ISODIR="/tmp"
ISONAME=truva-`uname -m`-`date +%F`.iso
HEDEF="$ISODIR/$ISONAME"

cd ..
mkisofs -o "$HEDEF" -v -J -R -D -A "Truva Linux" -V "$CDLABEL" \
-no-emul-boot -boot-info-table -boot-load-size 4 \
-b truva/boot/isolinux.bin -c truva/boot/isolinux.boot .

echo " Md5Sum Dosyasi Hazirlaniyor."

cd $ISODIR
md5sum $ISONAME >$ISONAME.md5sum

echo " Islem Tamamlandi."
