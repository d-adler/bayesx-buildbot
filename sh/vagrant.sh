V=1.8.1
mkdir -p _dl
cd _dl
case `uname` in
  Darwin)
    F=vagrant_$V.dmg
    U=https://releases.hashicorp.com/vagrant/$V/$F
    [ -f $F ] || curl -JOL $U
    [ -d /Volumes/Vagrant ] || hdiutil mount $F
    sudo installer -package /Volumes/Vagrant/Vagrant.pkg -target "/Volumes/Macintosh HD"
    hdiutil unmount /Volumes/Vagrant
    ;;
esac

