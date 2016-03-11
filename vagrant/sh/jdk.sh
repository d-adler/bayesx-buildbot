case `uname` in
  Linux)
    if [ `command -v apt-get` ]; then
      apt-get install -y default-jdk
    fi
    ;;
esac

