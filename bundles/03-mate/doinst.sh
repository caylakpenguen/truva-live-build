#!/bin/sh
# $1 = union directory

installpkg --root $1 $(find /root/truva -type f -name "libsigc++*.txz")


# alan bosaltalim. Dizinlerin icini bosaltir.
rm -rf $1/usr/doc/*/*
rm -rf $1/usr/info/*
rm -rf $1/usr/man/*/*

