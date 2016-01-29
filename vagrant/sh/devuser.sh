#!/bin/sh
case `uname` in
  SunOS)
    tee -a .profile <<EOF
PATH=/usr/ccs/bin:\$PATH
export PATH
PAGER=less
export PAGER
EOF
    ;; 
esac

