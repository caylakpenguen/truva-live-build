#!/bin/sh
# $1 = union directory
echo "Slax 7.0.0-prealpha3" >$1/etc/slax-version
touch $1/var/lock/001lock # make sure 001-core bundle will never be deactivated
chmod ago-x $1/etc/rc.d/rc.sshd
ln -s /mnt/live/bin/busybox $1/usr/bin/vi
