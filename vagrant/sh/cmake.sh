case `uname` in
  Linux)
    if [ `command -v apt-get` ]; then 
      apt-get install -y cmake
    elif [ `command -v dnf` ]; then
      dnf -y install  cmake 
    fi
    ;;
  OpenBSD)
    pkg_add cmake
    ;;
  NetBSD)
    pkgin -y in cmake
    ;; 
  SunOS)
    pkgutil -i -y cmake
    ;; 
esac

