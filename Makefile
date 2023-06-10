pwd := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

install:
	pack -Syuq qemu-desktop edk2-ovmf archiso archinstall balena-etcher

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
