#!/bin/sh
#use sudo pip
if [ ! `command -v mkdocs` ]; then
  sudo -H pip install mkdocs
fi

