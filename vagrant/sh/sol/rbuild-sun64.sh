set -x
#rm -Rf ${HOME}/R-3.2.2
#gzcat /vagrant/_dl/R-3.2.2.tar.gz | /bin/tar -xf -
#cd ${HOME}/R-3.2.2
V=3.2.2
T=sun64
S=${HOME}/src/R-${V}
B=${HOME}/build/R-${V}-${T}
rm -Rf ${B}
mkdir -p ${B}
cd ${B}
tee config.site <<EOF
CC="cc -xc99 -m64"
CFLAGS="-O -xlibmieee"
F77="f95 -m64"
FFLAGS=-O
CXX="CC -library=stlport4 -m64"
CXXFLAGS=-O
FC="f95 -m64"
FCFLAGS=$FFLAGS
FCLIBS="-lfai -lfsu"
R_LD_LIBRARY_PATH="/usr/local/lib:/opt/csw/gcc4/lib:/opt/csw/lib/64"
FLIBS_IN_SO="-R/opt/solarisstudio12.3/lib/amd64 /opt/solarisstudio12.3/lib/amd64/libfui.so /opt/solarisstudio12.3/lib/amd64/libfsu.so"
JAVA_CPPFLAGS="-I${JAVA_HOME}/../include -I${JAVA_HOME}/../include/solaris"
JAVA_LD_LIBRARY_PATH=${JAVA_HOME}/lib/amd64/server
JAVA_LIBS="-L${JAVA_HOME}/lib/amd64/server -R${JAVA_HOME}/lib/amd64/server -ljvm"
EOF
#JAVA_HOME=/usr/java
#PATH=/usr/java/jre/bin/amd64:${PATH}
${S}/configure --prefix=/usr/R-${T} CPPFLAGS="-I/opt/csw/include" LDFLAGS="-L/opt/csw/lib/64" 
make
sudo make install

