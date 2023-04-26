pwd := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

install:
	sudo pacman --noconfirm -Sy qemu-desktop edk2-ovmf archiso archinstall
	yay -Sy --noconfirm meson ninja appimagelauncher
	go install github.com/ktr0731/evans@latest
	go install mvdan.cc/gofumpt@latest
	go install github.com/cweill/gotests/gotests@latest
	go install github.com/fatih/gomodifytags@latest
	go install github.com/josharian/impl@latest
	go install github.com/haya14busa/goplay/cmd/goplay@latest
	go install github.com/go-delve/delve/cmd/dlv@latest
	go install honnef.co/go/tools/cmd/staticcheck@latest
	go install golang.org/x/tools/gopls@latest
	code --install-extension dancheg97.grpc-clicker
	code --install-extension esbenp.prettier-vscode
	code --install-extension ms-azuretools.vscode-docker
	code --install-extension ms-vscode-remote.remote-containers
	code --install-extension PKief.material-icon-theme
	code --install-extension ms-vscode-remote.remote-ssh
	code --install-extension MS-vsliveshare.vsliveshare
	code --install-extension redhat.vscode-yaml
	code --install-extension golang.Go
	code --install-extension mhutchie.git-graph
	code --install-extension rangav.vscode-thunder-client
	code --install-extension zxh404.vscode-proto3
	code --install-extension Dart-Code.flutter
	code --install-extension IronGeek.vscode-env
	code --install-extension svelte.svelte-vscode
	wget -O balenaEtcher-1.13.1-x64.AppImage https://github.com/balena-io/etcher/releases/download/v1.13.1/balenaEtcher-1.13.1-x64.AppImage

# required if pacman conf is lin
database:
	docker compose up

.PHONY: build
build:
	sudo rm -rf tmp
	sudo rm -rf build
	sudo chmod a+rwx -R .
	mkdir -p tmp
	sudo mkarchiso -v -w tmp -o build .

run:
	run_archiso -i $(pwd)/build/fmnx-$(shell date +"%Y.%m.%d")-x86_64.iso
