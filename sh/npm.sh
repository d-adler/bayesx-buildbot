#!/bin/sh
#use sudo
case `uname` in
  Darwin)
    if [ `command -v port` ]; then
      [ ! `commmand -v npm` ] || sudo port install npm
    fi
    ;;
esac

