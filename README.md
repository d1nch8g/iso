<p align="center">
<img style="align: center; padding-left: 10px; padding-right: 10px; padding-bottom: 10px;" width="238px" height="238px" src="./logo.png" />
</p>

<h2 align="center">ISO image for fmnx linux distro</h2>

![Generic badge](https://img.shields.io/badge/status-alpha-red.svg)
[![Generic badge](https://img.shields.io/badge/license-gpl-orange.svg)](https://fmnx.su/core/iso/src/branch/main/LICENSE)
[![Generic badge](https://img.shields.io/badge/fmnx-repo-006db0.svg)](https://fmnx.su/core/iso)
[![Generic badge](https://img.shields.io/badge/github-repo-white.svg)](https://github.com/fmnx-su/iso)
[![Generic badge](https://img.shields.io/badge/codeberg-repo-45a3fb.svg)](https://codeberg.org/fmnx/iso)

> **Warning!** Project is in alpha stage, API's are very likely to be changed.

This repository contains scripts and configurations required to build `fmnx-iso` linux image. This ISO contains minimal gnome, ainst installer and set of scripts required to build fmnx linux system. You can build it by running commands:

```sh
make install
make build
```

Before building ISO image, consider setting up your own infrastructure, example can be [found here](https://fmnx.su/core/infr). To add additional packages from AUR to resulting build you can use packages.sh script. It loads `PKGBUILD's` from `AUR`, builds them and pushes to fmnx core registry. Pack used to build and push [packages](https://fmnx.su/core/pack).

---

## Airootfs:

Folder which contains resulting file system of live ISO image. All files located in this folder will be present in resulting ISO image.

- `airootfs/etc/dconf/db/local.d/00-settings` - gnome settings in live ISO image
- `airootfs/etc/gdm/custom.conf` - automatic login GDM settings
- `airootfs/etc/pacman.conf` - pacman configuration for live ISO image (used when building ISO and transfered to resulting system aswell)
- `airootfs/etc/nanorc` - config for nano
- `airootfs/etc/passwd` - user and chosen shell
- `airootfs/root` - root folder with configs for archinstall, ainst, gpg setup and git. This folder will be transfered to resulting system.
- `airootfs/root/.config` - configurations and settings for different applications
- `airootfs/usr/local/share/backgrounds` - background image and system logo

## Efiboot/loader, syslinux:

Configurations for bootloader:

- timeouts
- installation directories
- conf path
- iso boot options
- iso background color
- iso labels

## Root directory:

- `packages.sh` - script that will load packages from AUR, build them and push to your personal repository.
- `packages.x86_64` - list of packages that will be added to resulting ISO image.
- `profiledef.sh` - different ISO parameters (name, label, architecture, etc)
        