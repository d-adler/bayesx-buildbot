#!/bin/sh

case `uname` in
  Darwin)
    sudo port install gsl
    ;;
  Linux)
    if [ `command -v apt-get` ]; then
      sudo apt-get install -y libgsl0-dev
    elif [ `command -v dnf` ]; then
      sudo dnf -y install gsl-devel readline-devel
    fi
    ;;
  SunOS)
    sudo pkgutil -i -y CSWgsl-dev CSWlibreadline-dev
    ;;
esac

