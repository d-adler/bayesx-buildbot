case `uname` in 
  Linux)
    if [ `command -v apt-get` ]; then
      apt-get install -y subversion mercurial git
    elif [ `command -v dnf` ]; then
      dnf -y install subversion mercurial git
    fi
    ;;
  SunOS)
    pkgutil -i -y subversion mercurial git
    ;;
  Darwin)
    port install subversion mercurial git
    ;;
esac

