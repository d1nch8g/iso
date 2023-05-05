pwd := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

install:
	sudo pacman --noconfirm -Sy go visual-studio-code-bin qemu-desktop edk2-ovmf archiso archinstall

.PHONY: build
build:
	sudo rm -rf tmp
	sudo rm -rf build
	sudo chmod a+rwx -R .
	mkdir -p tmp
	mkdir -p airootfs/root/go/bin
	sudo mkarchiso -v -w tmp -o build .

flash:
	sudo dd bs=4M if=$(pwd)/build/fmnx-$(shell date +"%Y.%m.%d")-x86_64.iso of=/dev/sda

run:
	run_archiso -i $(pwd)/build/fmnx-$(shell date +"%Y.%m.%d")-x86_64.iso
