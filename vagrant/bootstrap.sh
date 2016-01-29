# vagrant ssh-config >.ssh_config
hg init master
echo [ui] >>master/.hg/hgrc
echo "ssh=ssh -F $PWD/.ssh_config" >>master/.hg/hgrc
echo [paths] >>master/.hg/hgrc
echo 'default=ssh://master/master' >>master/.hg/hgrc
hg pull -R master -u
# hg clone -e 'ssh -F .ssh_config' ssh://default/master master

