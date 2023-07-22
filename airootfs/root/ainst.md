## About fmnx distro...

Since [GNU](https://www.gnu.org/)/[Linux](https://github.com/torvalds/linux) is the only system, that equally belongs to every person in the world without any exceptions, we try to make it better place for every user.

This [arch](https://archlinux.org/) based distribution provides world's most advanced free/open-source tooling, working properly without any adjustments out of the box. The more people we involve in linux development, the better system it will become.

---

## Increase complexity

Similarly, as [nuxt](https://nuxtjs.org/) is built on top of [vue](https://vuejs.org/), providing better development experience for complex projects, this system goal is to precisely choose the correct level of abstraction to build new projects on top of existing software. We use this approach, with intention to build software not replacing existing components, but complementing user workflow with new features.

Package manager [pack](https://fmnx.su/core/pack) is built on top of pacman, providing additional functionality for software delivery and repository management. System installation tool [ainst](https://fmnx.su/core/ainst) is built on top of [archinstall](https://wiki.archlinux.org/title/archinstall), to provide flexible, customizable and beautiful system installation experience. You can provide access to your packages from [gitea](https://gitea.io/en-us/) under your own domain, and deliver them to [gitea](https://gitea.io/en-us/) using [pack](https://fmnx.su/core/pack) package manager.

Instead of rebuilding software from scratch, we focus on ability to reuse and accumulate existing experience and knowledge. By picking the modular architecture and correct abstraction complexity level for our projects, we concentrate on providing additional functionality and improving overall system experience.

---

## Software & Features

List of installed and adjusted programs:

- `linux-zen` - result of a collaborative effort of kernel hackers to provide the best Linux kernel possible for everyday systems. Some more details can be found [here](https://liquorix.net).
- `gnome` - originally an acronym for GNU Network Object Model Environment, is a free and open-source desktop environment for Linux and other Unix-like operating systems.
- `vscodium` - free/libre open source software binaries of VS Code. VSCodium is shipped with configurations to better fit in gnome and faster get started with [git](https://git-scm.com/) and [docker](https://www.docker.com/).
- `git` - Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency. Name and email configured automatically after installation, credential helper is enabled by default.
- `terminal` - [zsh](https://wikipedia.org/wiki/Zsh) comes as default shell. Autocompletion, syntax highlighting, suggestions and p10k theming already configured.
- `gpg` - installer will automatically generate [gpg](https://gnupg.org/) keys, you can start creating and shipping arch packages instantly after installation.
- `docker` - [docker](https://www.docker.com/) and [docker-compose](https://docs.docker.com/compose/) will be installed and enabled. You can start using them right after installation.
- `pack` - [pack](https://fmnx.su/core/pack) is decentralized package manager based on pacman. Pack works as a wrapper over pacman providing additional functionality for software delivery and pacman database management.

All this combined can speed-up new developers integration - newcomers don't have to spend time adjusting environment, a tools are packed and working properly out of the box.

You can also take a look at os setup script in [this repository](https://fmnx.su/dancheg97/os). This script will install go, gRPC toolchain, flutter, distro development tooling. You can start with this example to write your own os setup script.
