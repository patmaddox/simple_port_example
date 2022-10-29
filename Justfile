package: clean-package _plist
  make WRKDIR=$(pwd)/work WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port package

clean-package:
  @rm -rf work/pkg

clean:
  @make clean
  @rm -rf work

_plist: _stage
  make WRKDIR=$(pwd)/work WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port makeplist | grep -v '/you/have/to/check/what/makeplist/gives/you' > port/pkg-plist
  @# need to re-stage after generating the packing list
  @make WRKDIR=$(pwd)/work WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port restage > /dev/null

_stage:
  make WRKDIR=$(pwd)/work WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port
  @make WRKDIR=$(pwd)/work WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port stage > /dev/null
