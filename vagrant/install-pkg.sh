#!/bin/sh -eu

if [ $# -ne 1 ]; then echo "usage: $0 <pkg>" ; exit 1 ; fi

pkg=$1

if [ ! -f $pkg ]; then echo "unknown package `basename $pkg`, missing file $pkg." ; exit 1 ; fi

boxes=${BOXES:-}

for box in $boxes ; do
cat pkgs/$pkg ./sh/pkg.sh | vagrant ssh $box
done

