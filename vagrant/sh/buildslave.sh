#!/bin/sh
case `uname` in
  OpenBSD)
    pkg_add py-buildslave
    ;;
  NetBSD)
    pkgin -y in py27-buildbot-slave
    ;;
  Darwin)
    port install buildbot-slave
    ;;
  SunOS)
    pkgutil -i -y python27 buildbot_slave # buildbot_slave
    ;;
  Linux)
    if [ `command -v apt-get` ]; then 
      apt-get install -y buildbot-slave
    elif [ `command -v dnf` ]; then
      dnf -y install buildbot-slave
    fi
    ;;
  *)
    echo "error: uname `uname` unknown."
    exit 1
    ;;
esac


