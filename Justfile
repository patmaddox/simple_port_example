package:
  make WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port
  @echo "plist:"
  @make WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port makeplist | grep -v '/you/have/to/check/what/makeplist/gives/you' | tee port/pkg-plist
  make WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port all package

clean:
  make clean
  @rm -f port/pkg-plist
  make WRKSRC=$(pwd) USE_GITHUB=no DISTFILES="" -C port clean