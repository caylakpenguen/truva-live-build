#!/bin/sh
# $1 = union directory
echo "$TRUVAVERSION" >$1/etc/truvalinux-version
touch $1/var/lock/001lock # make sure 001-core bundle will never be deactivated
chmod ago-x $1/etc/rc.d/rc.sshd
ln -s /mnt/live/bin/busybox $1/usr/bin/vi
chmod ago+x $1/etc/rc.d/rc.bluetooth
mkdir $1/var/spool/rwho

# gerekli paketleri kurar
installpkg --root $1 /CDROM/slackware/ap/dvd+rw-tools*.txz

installpkg --root $1 /CDROM/slackware/n/biff+comsat*.txz

installpkg --root $1 /CDROM/slackware/l/gtk+*.txz

installpkg --root $1 /CDROM/slackware/d/gcc-g++*.txz

# alan bosaltalim. Dizinlerin icini bosaltir.
rm -rf $1/usr/doc/*/*
rm -rf $1/usr/info/*
rm -rf $1/usr/man/*/*
rm -rf $1/boot/*

# ----
rm -rf $1/media
rm -rf $1/mnt
