#!/bin/sh

FLARE_PACKAGE=../flare-engine/flare_osx.tar.gz
FLARE_DMG=flare.dmg
RESOURCES_DIR=flare_dmg/Flare.app/Contents/Resources

if [ "$1" != "" ]; then
 FLARE_PACKAGE=$1
fi

if [ "$2" != "" ]; then
 FLARE_DMG=$2
fi

#find . -name '.DS_Store' -type f -delete

rm -rf ${FLARE_DMG}
rm -rf ${RESOURCES_DIR}

mkdir -p ${RESOURCES_DIR}
tar -C ${RESOURCES_DIR} -zxf ${FLARE_PACKAGE}
#cp -r English.lproj ${RESOURCES_DIR}

cp English.lproj/flare.icns ${RESOURCES_DIR}

dmgbuild -s flare_dmg_settings.py Flare ${FLARE_DMG}
