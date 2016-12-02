#!/bin/sh

BASEDIR=`dirname "${0}"`

if [ "root" != `whoami` ]; then
	echo "soracomair_wvdial_failed to install"
	logger "soracomair_wvdial failed to install"
	exit 1
fi

ln -s $BASEDIR/wvdial_soracomair /usr/sbin/wvdial_soracomair
ln -s $BASEDIR/soracomair /etc/init.d/soracomair

update-rc.d soracomair defaults
