<p align="center">
<img style="align: center; padding-left: 10px; padding-right: 10px; padding-bottom: 10px;" width="238px" height="238px" src="https://fmnx.su/dancheg97/Pictures/raw/branch/main/iso.png" />
</p>


Since GNU/Linux is the only system, that equally belongs to every person in the world without any exceptions, we try to make linux better place for every it's user.

This distribution provides world's most advanced free/open-source tooling, working properly without any adjustments out of the box. The more people we involve in linux development, the better system it will become, that is why fmnx was born.

---

## Increase complexity

Similarly, as [nuxt](https://nuxtjs.org/) is built on top of [vue](https://vuejs.org/), providing better development experience for complex projects, this system goal is to precisely choose the correct level of abstraction to build new projects on top of existing software. That is the approach we use, with intention to build software not replacing existing components, but complementing user workflow with new features.

Our package manager [pack](https://fmnx.su/core/pack) is built on top of pacman, providing additional functionality for software delivery. System installation tool [ainst](https://fmnx.su/core/ainst) is built on top of [archinstall](https://wiki.archlinux.org/title/archinstall) (written in [flutter](https://flutter.dev/)), to provide flexible, customizable and beautiful system installation experience. Our custom version of [gitea](https://gitea.io/en-us/) allows users to push their packages directly to embedded pack registry, to deliver software much faster.

Instead of rebuilding software from scratch, we focus on ability to reuse and accumulate existing experience and knowledge. By picking the modular architecture and correct abstraction complexity level for our projects, we concentrate on providing additional functionality and improving overall system experience.

---

## Modern tools, out of the box

This registry includes a lot of development tools perfectly adjusted for instant usage after installation. Each tool is guaranteed to provide perfect development experience, and not forcing users to purchase additional products or services - each component is chosen to be free/open source in the first place.

- `go` - statically typed, compiled high-level programming language known for simplicity and ease of concurrecy. Also a lot of go tooling is included: `buf`, `golanglintci`, `gofumpt`, etc...
- `rust` - multi-paradigm, high-level, general-purpose programming language that emphasizes performance and type safety.
- `node` - back-end JavaScript runtime environment, runs on the V8 JavaScript Engine, and executes JavaScript code outside a web browser.
- `flutter` - open-source UI software development kit created by Google.
- `v` - modern statically typed compiled programming language designed for building maintainable software.
- `neovim` - hyperextensible Vim-based text editor.
- `vscodium` - streamlined code editor with support for development operations like debugging, task running, and version control.
- `gRPC toolchain` - protoc compiler with `go` and `dart` plugins.
- `linux devtools` - tools, required for linux system development: `qemu`, `archiso`, `archinstall`, `meson`, `ninja`.

All this combined can speed-up new developer integration - newcomers don't have to spend time adjusting environment, everything is packed and ready to use.

---

## Style agnosticims

Distribution is not forcing system or applications to have any specific color, but trying to provide additional adjustments for different software components to fit well in end-system. This allows differently styled applications to fit well in end system.

> Currently only gnome supported as desktop environment, but later we are gonna add different options to choose.

Also, when it comes to system applications styling, we try to follow material guidelines developing our desktop apps.
