#!/bin/bash

DISTRO=$(uname -o)

if [ $DISTRO == Android ]; then
	export MRPHISHER_ROOT="/data/data/com.termux/files/usr/opt/mrphisher"
else
	export MRPHISHER_ROOT="/usr/opt/mrphisher"
fi

cd $MRPHISHER_ROOT
bash ./mrphisher.sh
