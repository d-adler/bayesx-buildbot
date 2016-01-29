V=0.8.6
mkdir -p _dl
cd _dl
case `uname` in
  Darwin)
    F=packer_${V}_darwin_amd64.zip
    U=https://releases.hashicorp.com/packer/$V/$F
    [ -f $F ] || curl -JOL $U
    #sudo mkdir -p /opt/packer
    #sudo unzip -d /opt/packer $F
    mkdir -p $HOME/packer_cache
    tee -a $HOME/.profile <<EOF
PATH=/opt/packer:\$PATH
export PATH
PACKER_CACHE=\$HOME/packer-cache
export PACKER_CACHE
EOF
    ;;
esac

