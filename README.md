# BayesX / GWDG Developments / Jan-Mar 2016 

- [Repository Works](repo) 
- [Buildbot Packer Templates](packer)
- [Buildbot Vagrant Environment](vagrant)
- [Buildbot Master Configuration](master)


~~~
repo/
packer/
  Makefile
vagrant/
  dl/
  Vagrantfile
  sh/
master/
  README.md
  bootstrap.sh
  work/
    .hg/
    master.cfg
~~~

## TODO

- Build java
- Build bayesxsrc R Package

## Getting Started..

Setup svn server and vagrant environment

~~~
./bootstrap2.sh
~~~

Check out master configuration

~~~
hg clone someurl/master master
cat <<EOF >>master/.hg/hgrc
[ui]
ssh=ssh -F /p/buildbot/vagrant/.ssh_config
[paths]
default=ssh://master/master
EOF
~~~



~~~
cd repo
cd svn
./bootstrap.sh
~~~

./serve.sh

~~~
cd vagrant
vagrant up
cd master
# edit master.cfg
hg commit -m "note" && hg push
~~~

# NOTES

## URLS

~~~
svn checkout svn+ssh://dadler@scm.r-forge.r-project.org/svnroot/bayesr/
svn checkout http://svn.gwdg.de/svn/bayesx/trunk bayesx
~~~

## Buildbot on Mac OS X

~~~
easy_install pip
pip install buildbot
~~~

