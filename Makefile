pwd := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

gitadd:
	git remote add github https://github.com/fmnx-su/iso
	git remote add codeberg https://codeberg.org/fmnx/iso

push:
	git push
	git push github
	git push codeberg

install:
	pack -Syuq qemu-desktop edk2-ovmf archiso archinstall balena-etcher fuse2 vmware-workstation

.PHONY: build
build:
	sudo rm -rf tmp
	sudo rm -rf build
	sudo chmod a+rwx -R .
	mkdir -p tmp
	mkdir -p airootfs/root/go/bin
	sudo mkarchiso -v -w tmp -o build .

run:
	run_archiso -i $(pwd)/build/fmnx-$(shell date +"%Y.%m.%d")-x86_64.iso
