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

find . -name '.DS_Store' -type f -delete 

rm -rf ${FLARE_DMG}
rm -rf ${RESOURCES_DIR}

mkdir -p ${RESOURCES_DIR}
tar -C ${RESOURCES_DIR} -zxf ${FLARE_PACKAGE}
cp -r English.lproj ${RESOURCES_DIR}

# brew install create-dmg
create-dmg \
--volname "Flare" \
--volicon "flare_dmg/Flare.app/Contents/Resources/English.lproj/flare.icns" \
--background "../flare-engine/distribution/macos/flare_dmg_background.png" \
--text-size 16 \
--window-size 642 320 \
--app-drop-link 300 125 \
--icon Flare.app 100 125 \
--hide-extension Flare.app \
--eula flare_dmg/COPYING \
${FLARE_DMG} \
flare_dmg/
