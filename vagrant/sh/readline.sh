#!/bin/sh

case `uname` in
  Linux)
    if [ `command -v dnf` ]; then
      sudo dnf -y install readline-devel
    fi
    ;;
  SunOS)
    sudo pkgutil -i -y CSWlibreadline-dev
    ;;
esac


