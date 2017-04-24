cd /tmp
VERSION=2.3.4
case `sw_vers -productVersion` in
  10.11*)
    L=10.10-Yosemite
    ;;
  10.10*)
    L=10.10-Yosemite
    ;;
  10.9*)
    L=10.9-Mavericks
    ;;
  10.8*)
    L=10.8-MountainLion
    ;;
esac
PKG=MacPorts-$VERSION-$L.pkg
#curl -s -O https://distfiles.macports.org/MacPorts/$PKG
#sudo installer -verbose -pkg $PKG -target /
tee -a ~/.profile <<EOF
PATH=/opt/local/bin:$PATH
export PATH
EOF

