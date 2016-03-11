bzcat /vagrant/_dl/SolarisStudio12.3-solaris-x86-pkg.tar.bz2 | /bin/tar -xf -
cd SolarisStudio12.3-solaris-x86-pkg
sudo ./solarisstudio.sh --non-interactive --install-components c-and-cpp-compilers,fortran-compiler,performance-library
sudo ./install_patches.sh
