#!/usr/bin/env bash

##################################################
# Install USB WIFI Driver (RTL8812AU / RTL8821AU)
##################################################

URL="https://github.com/abperiasamy/rtl8812AU_8821AU_linux.git"

PATH_LOC="/host"

PATH_FOLDER="${PATH_LOC}/rtl8812AU_8821AU_linux"

echo "[RTL8812AU] ${PATH_FOLDER}"

if [ -f "$PATH_FOLDER/README.md" ]
then
	echo "[RTL8812AU] --- UNINSTALL -> REMOVE OLD SRC"

	cmd=$(cd ${PATH_FOLDER} && sudo make uninstall)
	cmd=$(sudo rm -rf ${PATH_FOLDER})
fi

if [ -f "$PATH_FOLDER/README.md" ]
then
	echo ""
else
	echo "[RTL8812AU] --- DOWNLOAD NEW SRC -> COMPILE -> INSTALL"

	cmd=$(cd ${PATH_LOC} && git clone ${URL})
	cmd=$(cd ${PATH_FOLDER} && make clean && make && sudo make install)
	
	echo "done.."
fi
