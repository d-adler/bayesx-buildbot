set -x
V=3.2.2
T=sun32
S=${HOME}/src/R-${V}
B=${HOME}/build/R-${V}-${T}
rm -Rf ${B}
mkdir -p ${B}
cd ${B}
tee config.site <<EOF
CC="cc -xc99"
CFLAGS="-O -xlibmieee"
F77=f95
FFLAGS=-O
CXX="CC -library=stlport4"
CXXFLAGS=-O
FC=f95
FCFLAGS=$FFLAGS
FCLIBS="-lfai -lfsu"
R_LD_LIBRARY_PATH="/usr/local/lib:/opt/csw/gcc4/lib:/opt/csw/lib"
EOF
${S}/configure --prefix=/usr/R-${T} CPPFLAGS="-I/opt/csw/include" LDFLAGS="-L/opt/csw/lib" 
make
sudo make install

