# BayesX / GWDG Developments / Jan-Mar 2016 

- [Repository Works](repo) 
- [Buildbot Packer Templates](packer)
- [Buildbot Vagrant Environment](vagrant)
- [Buildbot Master Configuration](master)

# Getting Started

1. Start Subversion Repository
~~~
cd repo/svn
./serve.sh
~~~

2. Start Vagrant Build Farm
~~~
cd vagrant
vagrant up
~~~

3. Work 
~~~
cd repo/svn/work
echo "update" >>update-trigger
svn commit -m "update
~~~

4. Configure Buildbot Master
~~~
cd vagrant/master
~~~
edit files
~~~
hg push
~~~


Watch build farm compilation at http://master.bb:8010/waterfall

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

## Get prequisites

~~~
./bootstrap.sh
~~~

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

## Troubleshooting building R Package BayesXsrc

BayesXsrc suggests "R2BayesX", and R CMD check insists on this.
Workaround: Set environment variable `_R_CHECK_FORCE_SUGGESTS_` to `FALSE`


