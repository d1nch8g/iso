pwd := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

install:
	sudo pacman --noconfirm -Sy go visual-studio-code-bin qemu-desktop edk2-ovmf archiso archinstall
	go install github.com/ktr0731/evans@latest
	go install mvdan.cc/gofumpt@latest
	go install github.com/cweill/gotests/gotests@latest
	go install github.com/fatih/gomodifytags@latest
	go install github.com/josharian/impl@latest
	go install github.com/haya14busa/goplay/cmd/goplay@latest
	go install github.com/go-delve/delve/cmd/dlv@latest
	go install honnef.co/go/tools/cmd/staticcheck@latest
	go install golang.org/x/tools/gopls@latest
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
	code --install-extension dancheg97.grpc-clicker
	code --install-extension svelte.svelte-vscode
	
.PHONY: build
build:
	sudo rm -rf tmp
	sudo rm -rf build
	sudo chmod a+rwx -R .
	mkdir -p tmp
	cp ~/go/bin/evans airootfs/root/go/bin
	cp ~/go/bin/gofumpt airootfs/root/go/bin
	cp ~/go/bin/gotests airootfs/root/go/bin
	cp ~/go/bin/gomodifytags airootfs/root/go/bin
	cp ~/go/bin/impl airootfs/root/go/bin
	cp ~/go/bin/goplay airootfs/root/go/bin
	cp ~/go/bin/dlv airootfs/root/go/bin
	cp ~/go/bin/staticcheck airootfs/root/go/bin
	cp ~/go/bin/gopls airootfs/root/go/bin
	cp -r ~/.vscode/extensions/esbenp.prettier-vscode-** airootfs/root/.vscode/extensions
	cp -r ~/.vscode/extensions/ms-azuretools.vscode-docker-** airootfs/root/.vscode/extensions
	cp -r ~/.vscode/extensions/ms-vscode-remote.remote-containers-** airootfs/root/.vscode/extensions
	cp -r ~/.vscode/extensions/pkief.material-icon-theme-** airootfs/root/.vscode/extensions
	cp -r ~/.vscode/extensions/ms-vscode-remote.remote-ssh-** airootfs/root/.vscode/extensions
	cp -r ~/.vscode/extensions/ms-vsliveshare.vsliveshare-** airootfs/root/.vscode/extensions
	cp -r ~/.vscode/extensions/redhat.vscode-yaml-** airootfs/root/.vscode/extensions
	cp -r ~/.vscode/extensions/golang.go-** airootfs/root/.vscode/extensions
	cp -r ~/.vscode/extensions/mhutchie.git-graph-** airootfs/root/.vscode/extensions
	cp -r ~/.vscode/extensions/rangav.vscode-thunder-client-** airootfs/root/.vscode/extensions
	cp -r ~/.vscode/extensions/zxh404.vscode-proto3-** airootfs/root/.vscode/extensions
	cp -r ~/.vscode/extensions/dart-code.flutter-** airootfs/root/.vscode/extensions
	cp -r ~/.vscode/extensions/irongeek.vscode-env-** airootfs/root/.vscode/extensions
	cp -r ~/.vscode/extensions/dancheg97.grpc-clicker-** airootfs/root/.vscode/extensions
	cp -r ~/.vscode/extensions/svelte.svelte-vscode-** airootfs/root/.vscode/extensions
	sudo mkarchiso -v -w tmp -o build .

flash:
	sudo dd bs=4M if=$(pwd)/build/fmnx-$(shell date +"%Y.%m.%d")-x86_64.iso of=/dev/sda

run:
	run_archiso -i $(pwd)/build/fmnx-$(shell date +"%Y.%m.%d")-x86_64.iso
