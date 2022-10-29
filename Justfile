package:
  make WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port
  @make WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port makeplist | grep -v '/you/have/to/check/what/makeplist/gives/you' > port/pkg-plist
  make WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port package

clean:
  make clean
  make WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port clean