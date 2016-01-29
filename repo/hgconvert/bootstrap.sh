case `uname` in
  Darwin)
    if [ `command -v port` ]; then
      sudo port install py-hgsubversion
    fi
    ;;
esac
hg convert -s svn http://svn.gwdg.de/svn/bayesx/trunk bayesx.hg
# --username guest --password guest 
