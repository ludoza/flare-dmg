#!/bin/sh

FLARE_PACKAGE=../flare-engine/flare_osx.tar.gz
RESOURCES_DIR=flare_dmg/Flare.app/Contents/Resources

find . -name '.DS_Store' -type f -delete 

rm -rf flare.dmg
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
flare.dmg \
flare_dmg/
