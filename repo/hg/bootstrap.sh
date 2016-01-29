svn checkout http://svn.gwdg.de/svn/bayesx/trunk bayesx
cd bayesx
SVNVERSION=`svnversion`
hg init
echo ^.svn/ >>.hgignore
hg commit -A -m "imported from svn revision ${SVNVERSION}"
