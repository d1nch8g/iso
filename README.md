<p align="center">
<img style="align: center; padding-left: 10px; padding-right: 10px; padding-bottom: 10px;" width="238px" height="238px" src="./airootfs/usr/local/share/backgrounds/fmnx-linux.png" />
</p>

<h2 align="center">FMNX linux distro</h2>

[![Generic badge](https://img.shields.io/badge/LICENSE-GPLv3-orange.svg)](https://dancheg97.ru/dancheg97/fmnx/src/branch/main/LICENSE)
[![Generic badge](https://img.shields.io/badge/GITEA-REPO-blue.svg)](https://dancheg97.ru/dancheg97/fmnx)
[![Generic badge](https://img.shields.io/badge/GITHUB-REPO-red.svg)](https://github.com/fmnx-ru/fmnx)
[![Build Status](https://ci.fmnx.io/api/badges/dev/fmnx/status.svg)](https://ci.fmnx.io/dev/fmnx)

You cannot win the software race in this modern, distributed, open-source world if you are not able to accumulate and integrate existing software into the end system, keeping its cutting edge flow.

This distribution is providing world's most advanced open-source tooling, working properly without any adjustments out of the box.

<p align="center">
<img style="align: center; max-width: 60%" src="./system.gif" />
</p>

## 📦 [Pack](https://fmnx.io/dev/pack) - git based package manager

System provides package manager which main goal is to simplify process of package creation for developer and reuse power of git. This package manager has following features:

- Install and update packages from git repositories
- Compatible with all arch-based distros
- Easy to write config `pack.yml`

Full description can be found here: [repository](https://fmnx.io/dev/pack)

## 🧰 Development tools

Our distro comes with predefined rich set of development tools, allowing it's users not to spend much time adjusting shell, IDE, git or docker. Tooling included in distro:

- Git
- Docker and docker-compose
- Zsh autosuggestions, completions and highlighting
- Golang, rust, dart, node, v
- Protoc for gRPC with go and dart generators
- Flutter with all libraries required for linux and web development
- VSCode and neovim with small adjustments

## 🐾 Default gnome desktop environment

At the moment distro comes only with default `gnome` as desktop environment, and not forcing any specific color palette or style. Currently we have added those gnome extensions:

- dash2dock
- gtile

Also, we adjusted keyboard keymaps in such a way, that regular windows users could easily switch to this distro.

## 🛟 System utilities

Also distribution provides set of system utilities which might be very userfull development process:

- Backups
- Disks
- Usage analyser
- System monitor
- Font exolorer
- Emoji explorer
