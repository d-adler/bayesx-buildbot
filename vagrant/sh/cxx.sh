#!/bin/sh
case `uname` in
  Linux)
    if [ `command -v apt-get` ]; then 
      apt-get install -y g++ clang
    elif [ `command -v dnf` ]; then
      dnf -y install clang
    fi
    ;;
  OpenBSD)
    pkg_add git mercurial subversion cmake
    ;;
  NetBSD)
    pkgin -y in git mercurial subversion cmake
    ;; 
  SunOS)
    pkgutil -i -y gmake gcc4g++ 
    # gcc4gfortran
    ;; 
  *)
    echo "error: uname `uname` unknown."
    exit 1
    ;;
esac


  
