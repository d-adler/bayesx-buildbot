tee -a .profile <<EOF
PATH=/usr/ccs/bin:\$PATH
export PATH
EOF

sudo pkgutil -i -y CSWlibreadline-dev
sudo pkgutil -i -y CSWlibiconv-dev 

mkdir src
cd src
gzcat /vagrant/_dl/R-3.2.2.tar.gz | /bin/tar -xf -
# bzcat /vagrant/_dl/R-devel.tar.gz | /bin/tar -xf -

