svnadmin create bayesx
svn checkout file://$PWD/bayesx work
cd work
svn export --force http://svn.gwdg.de/svn/bayesx/trunk trunk >import.log
svn add trunk
svn commit -m "imported"

