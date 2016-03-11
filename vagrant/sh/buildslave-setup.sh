buildslave create-slave --keepalive=10 --maxdelay=10 slave master.bb `uname -n` `uname -n`
# buildslave restart slave
case `uname` in
  Linux)
    if [ `command -v apt-get` ]; then
      sudo cp /vagrant/init/debian/buildslave /etc/defaults/
    elif [ `command -v yum` ]; then
      sudo cp /vagrant/init/fed/buildbot-slave.service /etc/systemd/system
      sudo systemctl enable buildbot-slave.service
      sudo systemctl start  buildbot-slave.service
    fi
    ;;
  SunOS)
    sudo cp /vagrant/init/sol/buildslave /etc/init.d/
    sudo chmod 0744 /etc/init.d/buildslave
    chown root:sys /etc/init.d/buildslave
    cd /etc/init.d
    ln buildslave /etc/rc2.d/S99buildslave
    ln buildslave /etc/rc0.d/K99buildslave
    ;;
esac

