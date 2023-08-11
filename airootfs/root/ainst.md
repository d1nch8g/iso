## GNU/Linux Egalitarism

Egalitarianism (from French égal 'equal') is a school of thought within political philosophy that builds on the concept of social equality, prioritizing it for all people. Egalitarian doctrines are generally characterized by the idea that all humans are equal in fundamental worth or moral status. As such, all citizens of a state should be accorded equal rights and treatment under the law.

Most operating systems do not provide people with the [digital freedoms](https://www.gnu.org/philosophy/free-sw.en.html) that are key to egalitarian society:

- The freedom to run the program as you wish, for any purpose (freedom 0).
- The freedom to study how the program works, and change it so it does your computing as you wish (freedom 1). Access to the source code is a precondition for this.
- The freedom to redistribute copies so you can help others (freedom 2).
- The freedom to distribute copies of your modified versions to others (freedom 3). By doing this you can give the whole community a chance to benefit from your changes. Access to the source code is a precondition for this.

Other operating systems lead to elitism - unlimited power over software users. Modern society should avoid proprietary programs, as they have a harmful effect on people's attitude on programs and development process.

---

## Increase complexity

Similarly, as [nuxt](https://nuxtjs.org/) is built on top of [vue](https://vuejs.org/), providing better development experience for complex projects, this system goal is to precisely choose the correct level of abstraction to build new projects on top of existing software. We use this approach, with intention to build software not replacing existing components, but complementing user workflow with new features.

Package manager [pack](https://fmnx.su/core/pack) is built on top of pacman, providing additional functionality for software delivery and repository management. System installation tool [ainst](https://fmnx.su/core/ainst) is built on top of [archinstall](https://wiki.archlinux.org/title/archinstall), to provide flexible, customizable and beautiful system installation experience. You can provide access to your packages from [gitea](https://gitea.io/en-us/) under your own domain, and deliver them to [gitea](https://gitea.io/en-us/) using [pack](https://fmnx.su/core/pack) package manager.

Instead of rebuilding software from scratch, we focus on ability to reuse and accumulate existing experience and knowledge. By picking the modular architecture and correct abstraction complexity level for our projects, we concentrate on providing additional functionality and improving overall system experience.

---

## Distro features

- Arch based distribution, default mirrors, rolling release model
- Very simple installer - [ainst](https://fmnx.su/core/ainst), which can use any bash scripts under the hood
- Decentralized package manager - [pack](https://fmnx.su/core/pack), built on top of pacman, with additional functionality for software delivery
- [gpg](https://gnupg.org/), [git](https://git-scm.com/) and [docker](https://www.docker.com/) are set up by default during installation
- [Ungoogled-chromium](https://github.com/ungoogled-software/ungoogled-chromium) is default browser, [duckduckgo](https://duckduckgo.com/) - default search engine
- [VSCodium](https://vscodium.com/) is preinstalled, some default settings have been changed to better fit into distribution
- Terminal with completions, syntax highlighting, suggestions, powerlevel10k styling, nano editor with highlighting
- Password you pick is shared for sudo, root, gpg and disk encryption (you can change it later)
- Gnome desktop environment with minimal set of utilities, applications

Take a look at example of [os setup script](https://fmnx.su/dancheg97/os). This script will install go, gRPC toolchain, flutter, qemu, vmware and other development tooling.
