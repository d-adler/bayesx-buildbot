buildslave create-slave --keepalive=10 --maxdelay=10 slave master.bb `uname -n` `uname -n`
buildslave restart slave
case `uname` in
  Linux)
    if [ `command -v apt-get` ]; then
      sudo cp /vagrant/init/debian/buildslave /etc/defaults/
    fi
    ;;
esac

