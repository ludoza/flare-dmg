# Flare DMG creator

Thanks to @tvleavitt for [Flare DMG Build Documentation.pdf](https://github.com/clintbellanger/flare-engine/blob/master/distribution/macos/Flare%20DMG%20Build%20Documentation.pdf)

To use these scripts you should have packaged flare using `flare-engine/package_osx.sh`.

**Note** DMG packaging on Apple is a mess, I did not listen to the advice on stackoverflow:

- ["Don't go there. As a long term Mac developer, I can assure you, no solution is really working well."](https://stackoverflow.com/a/97025)

**So here be dragons**

- For `dmgbuild-flare.sh` you will need `pip install dmgbuild` but there is [issues with `dmgbuild` and python3](https://github.com/al45tair/dmgbuild/pull/14) so a [fork](https://github.com/ludoza/dmgbuild) was needed.
- For `create-dmg-flare.sh` you will need [`brew install create-dmg`](https://github.com/andreyvit/create-dmg), but there is [issues with icon generation](https://github.com/andreyvit/create-dmg/issues/72#issuecomment-526823666).
