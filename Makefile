pwd := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

install:
	sudo pacman --noconfirm -Sy qemu-desktop edk2-ovmf archiso archinstall
	yay -Sy --noconfirm meson ninja appimagelauncher
	wget -O balenaEtcher-1.13.1-x64.AppImage https://github.com/balena-io/etcher/releases/download/v1.13.1/balenaEtcher-1.13.1-x64.AppImage

# required if pacman conf is lin
database:
	docker compose up

.PHONY: build
build:
	sudo rm -rf tmp
	sudo rm -rf build
	sudo rm -rf fmnx-install
	sudo rm -rf airootfs/usr/bundle
	git clone https://fmnx.ru/dancheg97/fmnx-install
	cd fmnx-install && flutter build linux && cd ..
	mv fmnx-install/build/linux/x64/release/bundle airootfs/usr/bundle 
	sudo chmod a+rwx -R .
	mkdir -p tmp
	sudo mkarchiso -v -w tmp -o build .

run:
	run_archiso -i $(pwd)/build/fmnx-$(shell date +"%Y.%m.%d")-x86_64.iso
