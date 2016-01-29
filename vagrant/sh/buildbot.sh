#!/bin/sh

case `uname` in
  OpenBSD)
    pkg_add -r py-buildbot
    # pkg_add python-2.7.9p0 py-virtualenv-1.11.6
    ;;
  NetBSD)
    pkgin -y in py27-buildbot
    ;;
  Darwin)
    if [ `command -v port` ]; then
      port install buildbot
    elif [ `command -v brew` ]; then
      brew install buildbot-slave
    fi
    ;;
  SunOS)
    pkgutil -i -y buildbot
    ;;
  Linux)
    if [ `command -v apt-get` ]; then
      apt-get install -y buildbot
      locale-gen en_US en_US.UTF-8
      dpkg-reconfigure locales
    elif [ `command -v dnf`  ]; then
      dnf -y install buildbot
    fi
    ;;
  *)
    echo "error: uname `uname` unknown."
    exit 1
    ;;
esac

