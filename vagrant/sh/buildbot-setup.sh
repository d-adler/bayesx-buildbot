case `uname` in
  OpenBSD)
    buildbot create-master master
    cd master
    sudo pkg_add mercurial
    echo "[ui]" >>~/.hgrc
    echo "username=vagrant" >>~/.hgrc
    hg init
    echo "^state.sqlite"
    ;;
esac
