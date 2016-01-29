BOXES=${HOME}/.vagrant.d/boxes
BPATH=0/virtualbox/box.ovf

all: obsd fbsd nbsd win81 deb sol fed ws2008-r2 ws2012-r2

obsd: ${BOXES}/obsd-5.8/${BPATH}
${BOXES}/obsd-5.8/${BPATH}: d-adler-packer-openbsd/openbsd-5.8-amd64-virtualbox.box
	vagrant box add --force --name obsd-5.8 $<
d-adler-packer-openbsd/openbsd-5.8-amd64-virtualbox.box:
	cd d-adler-packer-openbsd && packer build -only=virtualbox-iso openbsd-5.8-amd64.json

fbsd: ${BOXES}/fbsd-10.2/${BPATH}
${BOXES}/fbsd-10.2/${BPATH}: packer-freebsd-10.2/FreeBSD-10.2-RELEASE-virtualbox.box
	vagrant box add --force --name fbsd-10.2 $<
packer-freebsd-10.2/FreeBSD-10.2-RELEASE-virtualbox.box:
	cd packer-freebsd-10.2 && packer build -only=virtualbox-iso template-10.2.json
#${BOXES}/fbsd-10.2/${BPATH}: packer-freebsd/box/virtualbox/freebsd102-nocm-.box
#	vagrant box add --name fbsd-10.2 $<
#packer-freebsd/box/virtualbox/freebsd102-nocm-.box:
#	cd packer-freebsd && packer build -only=virtualbox-iso freebsd102.json

nbsd: ${BOXES}/nbsd-7.0/${BPATH}
${BOXES}/nbsd-7.0/${BPATH}: packer-nbsd-boxes/builds/netbsd-7.0-amd64-virtualbox.box
	vagrant box add --name nbsd-7.0 $<
packer-nbsd-boxes/builds/netbsd-7.0-amd64-virtualbox.box:
	cd packer-nbsd-boxes && packer build -only=virtualbox-iso netbsd-7-amd64.json

win81: ${BOXES}/win81/${BPATH}
${BOXES}/win81/${BPATH}: packer-windows/windows_81_virtualbox.box
	vagrant box add --force --name win81 packer-windows/windows_81_virtualbox.box
packer-windows/windows_81_virtualbox.box:
	cd packer-windows && packer build -only=virtualbox-iso windows_81.json
clean-win81:
	rm -f packer-windows/windows_81_virtualbox.box

ws2008-r2: ${BOXES}/ws2008-r2/${BPATH}
${BOXES}/ws2008-r2/${BPATH}: packer-windows/windows_2008_r2_virtualbox.box
	vagrant box add --name ws2008-r2 packer-windows/windows_2008_r2_virtualbox.box
packer-windows/windows_2008_r2_virtualbox.box:
	cd packer-windows && packer build -only=virtualbox-iso windows_2008_r2.json

ws2012-r2: ${BOXES}/ws2012-r2/${BPATH}
${BOXES}/ws2012-r2/${BPATH}: packer-windows/windows_2012_r2_virtualbox.box
	vagrant box add --name ws2012-r2 packer-windows/windows_2012_r2_virtualbox.box
packer-windows/windows_2012_r2_virtualbox.box:
	cd packer-windows && packer build -only=virtualbox-iso windows_2012_r2.json

deb: ${BOXES}/deb-8.2/${BPATH}
${BOXES}/deb-8.2/${BPATH}: packer-templates/debian-8.2-amd64.box
	vagrant box add --name deb-8.2 packer-templates/debian-8.2-amd64.box
packer-templates/debian-8.2-amd64.box:
	cd packer-templates && packer build -only=virtualbox-iso debian-8.2-amd64.json

sol: ${BOXES}/sol-11.2/${BPATH}
${BOXES}/sol-11.2/${BPATH}: packer-vagrant-builder/build/sol11-x86_64-virtualbox.box
	vagrant box add --name sol-11.2 $<
packer-vagrant-builder/build/sol11-x86_64-virtualbox.box:
	cd packer-vagrant-builder && packer build -only=virtualbox-iso solaris11_2.json

fed: ${BOXES}/fed-22/${BPATH}
${BOXES}/fed-22/${BPATH}: packer-templates/fedora-22-x86_64.box
	vagrant box add --name fed-22 packer-templates/fedora-22-x86_64.box
packer-templates/fedora-22-x86_64.box:
	cd packer-templates && packer build -only=virtualbox-iso fedora-22-x86_64.json

