# Run in Master
buildbot create-master master
cd master
hg init
hg commit -A -m "initial"
cat <<EOF >>.hg/hgrc
[hooks]
changegroup = hg update
update = buildbot restart
EOF

