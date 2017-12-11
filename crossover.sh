#!/usr/bin/env bash

PATH_FOLDER="/home/yomun"

APP_FOLDER="/opt/cxoffice/lib/wine"

NEW_WINE_WRAPPER="${PATH_FOLDER}/winewrapper.exe.so"

APP_WINE_WRAPPER="${APP_FOLDER}/winewrapper.exe.so"

BACKUP_WINE_WRAPPER="${APP_FOLDER}/winewrapper.exe.so.backup"

if [ -f "${APP_WINE_WRAPPER}" ]
	cp ${APP_WINE_WRAPPER} ${BACKUP_WINE_WRAPPER}
	cp ${APP_WINE_WRAPPER} ${PATH_FOLDER}
fi

if [ -f "${NEW_WINE_WRAPPER}" ]
	cp ${NEW_WINE_WRAPPER} ${APP_FOLDER}
fi

# cd /opt/cxoffice/lib/wine
# chown root:root winewrapper.exe.so
# chmod 644 winewrapper.exe.so
