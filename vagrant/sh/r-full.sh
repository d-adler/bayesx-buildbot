#!/bin/sh
case `uname` in
  Linux)
    if [ `command -v apt-get` ]; then 
      apt-get install -y r-base-dev
    elif [ `command -v dnf` ]; then
      dnf -y install R
    fi
    ;;
  OpenBSD)
    pkg_add R
    ;;
  NetBSD)
    pkgin -y in R
    ;; 
  SunOS)
    pkgutil -i -y R
    ;; 
esac

