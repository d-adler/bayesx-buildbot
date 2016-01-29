#!/bin/sh
case `uname` in
  Linux)
    if [ `command -v apt-get` ]; then 
      apt-get install -y build-essential g++ git mercurial subversion cmake clang
    elif [ `command -v dnf` ]; then
      dnf -y install clang cmake git mercurial subversion
    fi
    ;;
  OpenBSD)
    pkg_add git mercurial subversion cmake
    ;;
  NetBSD)
    pkgin -y in git mercurial subversion cmake
    ;; 
  SunOS)
    pkgutil -i -y git mercurial subversion gmake gcc4g++ cmake
    ;; 
  *)
    echo "error: uname `uname` unknown."
    exit 1
    ;;
esac


  
