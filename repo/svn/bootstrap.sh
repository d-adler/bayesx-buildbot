#!/bin/sh -eux
bayesx_latest()
{
svnadmin create repos/bayesx
svn checkout file://$PWD/repos/bayesx work
cd work
svn export --force http://svn.gwdg.de/svn/bayesx/trunk trunk >import.log
svn add trunk
svn commit -m "imported"
}
bayesx_full_failed()
{
svnadmin create repos/bayesx
cp pre-revprop-change repos/bayesx/hooks/

svnsync init file:///$PWD/repos/bayesx http://svn.gwdg.de/svn/bayesx
svnsync sync file:///$PWD/repos/bayesx
}
bayesx_full()
{
svnadmin create repos/bayesx
svnadmin load   repos/bayesx <bayesx_dump_201602252209.dmp
}
bayesr_full()
{
svnadmin create repos/bayesr
cp pre-revprop-change repos/bayesr/hooks/
svnsync init file:///$PWD/repos/bayesr svn://scm.r-forge.r-project.org/svnroot/bayesr/
svnsync sync file:///$PWD/repos/bayesr
}
bayesx_full
