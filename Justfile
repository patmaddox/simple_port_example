build:
  make WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port

package: build clean-package
  @make WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port stage > /dev/null
  @make WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port makeplist | grep -v '/you/have/to/check/what/makeplist/gives/you' > port/pkg-plist
  @# need to re-stage after generating the packing list
  @make WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port restage
  make WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port package

clean-package:
  make WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port clean

clean: clean-package
  make clean
