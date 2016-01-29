#!/bin/sh
case `uname` in
  Darwin)
    tee -a ~/.profile <<EOF
export HTTP_PROXY=http://10.0.2.2:8123
export HTTPS_PROXY=http://10.0.2.2:8123
export RSYNC_PROXY=10.0.2.2:8123
export NO_PROXY=localhost,127.0.0.1,10.0.2.2
export http_proxy=http://10.0.2.2:8123
export https_proxy=http://10.0.2.2:8123
export rsync_proxy=10.0.2.2:8123
export no_proxy=localhost,127.0.0.1,10.0.2.2
EOF
    tee -a /etc/sudoers <<EOF
Defaults env_keep += "http_proxy https_proxy ftp_proxy rsync_proxy no_proxy"
Defaults env_keep += "HTTP_PROXY HTTPS_PROXY FTP_PROXY RSYNC_PROXY NO_PROXY"
EOF
    ;;
  SunOS)
    tee -a /export/home/vagrant/.profile <<EOF
export HTTP_PROXY=http://10.0.2.2:8123
export HTTPS_PROXY=http://10.0.2.2:8123
export RSYNC_PROXY=10.0.2.2:8123
export NO_PROXY=localhost,127.0.0.1,10.0.2.2
export http_proxy=http://10.0.2.2:8123
export https_proxy=http://10.0.2.2:8123
export rsync_proxy=10.0.2.2:8123
export no_proxy=localhost,127.0.0.1,10.0.2.2
EOF
    tee -a /etc/sudoers <<EOF
Defaults env_keep += "http_proxy https_proxy ftp_proxy rsync_proxy no_proxy"
Defaults env_keep += "HTTP_PROXY HTTPS_PROXY FTP_PROXY RSYNC_PROXY NO_PROXY"
EOF
    ;;
  OpenBSD|FreeBSD|NetBSD)
    profile=/etc/profile
    tee -a /etc/profile <<EOF
export HTTP_PROXY=http://10.0.2.2:8123
export HTTPS_PROXY=http://10.0.2.2:8123
export RSYNC_PROXY=10.0.2.2:8123
export NO_PROXY=localhost,127.0.0.1,10.0.2.2
export http_proxy=http://10.0.2.2:8123
export https_proxy=http://10.0.2.2:8123
export rsync_proxy=10.0.2.2:8123
export no_proxy=localhost,127.0.0.1,10.0.2.2
EOF
    case `uname` in
      OpenBSD)
        sudoers=/etc/sudoers
        ;; 
      NetBSD)
        sudoers=/usr/pkg/etc/sudoers.d/proxy
        ;;
      FreeBSD)
        sudoers=/usr/local/etc/sudoers.d/proxy
        ;;
      
    esac
    tee -a $sudoers <<EOF
Defaults env_keep += "http_proxy https_proxy ftp_proxy rsync_proxy no_proxy"
Defaults env_keep += "HTTP_PROXY HTTPS_PROXY FTP_PROXY RSYNC_PROXY NO_PROXY"
EOF
    ;;
esac

