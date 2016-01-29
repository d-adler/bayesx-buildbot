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
  Linux)
    # Debian:
    buildbot create-master master
    sudo cp /vagrant/init/debian/buildmaster buildmaster
    sudo service buildmaster start
    sudo update-rc.d buildmaster enable
    ;;
esac

