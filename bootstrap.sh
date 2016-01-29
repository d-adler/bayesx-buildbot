#!/bin/sh
[ `command -v packer`  ] || ./sh/packer.sh
[ `command -v vagrant` ] || ./sh/vagrant.sh
# [ `command -v mkdocs`  ] || ./sh/mkdocs.sh

