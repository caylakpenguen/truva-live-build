#!/bin/sh
# CaylakPenguen

echo "islem basladi" 

for VARIABLE in `cat 01-core.txt`
do
	echo  slackware\:$VARIABLE >>01-core-pkglist
	
done

unset VARIABLE

for VARIABLE in `cat 02-xorg.txt`
do
	echo  slackware\:$VARIABLE >>02-xorg-pkglist
	
done

unset VARIABLE

for VARIABLE in `cat 03-desktop-deps.txt`
do
	echo  slackware\:$VARIABLE >>03-desktop-deps-pkglist
	
done

unset VARIABLE

for VARIABLE in `cat 04-devel.txt`
do
	echo  slackware\:$VARIABLE >>04-devel-pkglist
	
done

unset VARIABLE

for VARIABLE in `cat 05-xfce4.txt`
do
	echo  slackware\:$VARIABLE >>05-xfce4-pkglist
	
done

unset VARIABLE

echo "islem bitti"