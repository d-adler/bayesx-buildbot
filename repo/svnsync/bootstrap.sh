#!/bin/sh
rm -Rf bayesx
svnadmin create bayesx
mv bayesx/conf/svnserve.conf bayesx/conf/svnserve.conf.orig
cp svnserve.conf      bayesx/conf/
cp pre-revprop-change bayesx/hooks/


