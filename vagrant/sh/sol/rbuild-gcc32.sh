set -x
#rm -Rf ${HOME}/R-3.2.2
#gzcat /vagrant/_dl/R-3.2.2.tar.gz | /bin/tar -xf -
#cd ${HOME}/R-3.2.2
#/vagrant/scripts/rsource
V=3.2.2
T=gcc32
S=${HOME}/src/R-${V}
B=${HOME}/build/R-${V}-${T}
rm -Rf ${B}
mkdir -p ${B}
cd ${B}
tee config.site <<EOF
CC="/opt/csw/gcc4/bin/gcc -m32"
CPPFLAGS="-I/opt/csw/include -I/usr/local/include"
F77="/opt/csw/gcc4/bin/gfortran -m32"
CXX="/opt/csw/gcc4/bin/g++ -m32"
FC="/opt/csw/gcc4/bin/gfortran -m32"
LDFLAGS="-L/opt/csw/gcc4/lib -L/opt/csw/lib -L/usr/local/lib"
EOF
${S}/configure --prefix=/usr/R-${T}
make
sudo make install

