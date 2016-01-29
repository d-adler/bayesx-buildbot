#!/bin/sh
# use sudo
if [ ! `command -v pip` ]; then
  if [ true ]; then
    sudo easy_install pip
    sudo pip buildbot
  elif [ `command -v port` ]; then
    sudo port install py-pip
    sudo port install pip_select
    sudo port select  pip pip27
    cat <<EOF >>${HOME}/.profile
#put macports python/pip binaries
PATH=\$PATH:/opt/local/Library/Frameworks/Python.framework/Versions/Current/bin
export PATH
EOF
  fi

fi


