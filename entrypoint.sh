#!/bin/bash

hub checkout master
VERSION_NAME=`grep -oP 'versionName "\K(.*?)(?=")' ./${APP_FOLDER}/build.gradle`
VERSION_CODE=`date '+%Y%m%d'`
hub release create -a ./${APP_FOLDER}/build/outputs/apk/debug/*-debug.apk -m "${RELEASE_TITLE} - v${VERSION_NAME}.${VERSION_CODE}" $(date +%Y%m%d%H%M%S) 
