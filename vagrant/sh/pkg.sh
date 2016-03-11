#!/bin/sh -u
case `uname` in
  Linux)
    [ `command -v apt-get` ] && sudo apt-get install -y ${apt:-$pkg}
    ;;
  SunOS)
    [ `command -v pkgutil` ] && sudo pkgutil -i -y ${pkgutil:-$pkg}
  Darwin)
    [ `command -v port` ] && sudo port install ${port:-$pkg}
    ;;
esac

