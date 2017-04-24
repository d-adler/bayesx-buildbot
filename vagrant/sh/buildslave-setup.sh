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
  Darwin)
    cat <<EOF | sudo tee /Library/LaunchDaemons/buildbot.slave.plist
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
  <key>UserName</key>
  <string>vagrant</string>
  <key>WorkingDirectory</key>
  <string>/Users/vagrant/</string>
  <key>EnvironmentVariables</key>
  <dict>
     <key>PATH</key>
      <string>/opt/local/bin:/sbin:/usr/sbin:/bin:/usr/bin</string>
  </dict>
  <key>StandardOutPath</key>
  <string>slave/twistd.log</string>
  <key>StandardErrorPath</key>
  <string>slave/twistd-err.log</string>
  <key>KeepAlive</key>
  <dict>
    <key>SuccessfulExit</key>
    <false/>
  </dict>
  <key>Label</key>
  <string>buildbot.slave</string>
  <key>ProgramArguments</key>
  <array>
    <string>/opt/local/bin/buildslave</string>
    <string>start</string>
    <string>--nodaemon</string>
    <string>slave</string>
  </array>
  <key>RunAtLoad</key>
  <true/>
  </dict>
</plist>
EOF
    sudo launchctl load -w /Library/LaunchDaemons/buildbot.slave.plist
    ;;
esac

