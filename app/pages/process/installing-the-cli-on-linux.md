---
title: "Installing the CLI on Linux"
slug: "installing-the-cli-on-linux"
category: "process"
ordinal: 4
---

There are a few options available to you for installing the CLI on Linux.

1. You can download the [latest release](http://github.com/exercism/cli/releases/latest) for your architecture (32-bit or 64-bit), extract it, and place the binary in your PATH.
1. You can use the [installation script](http://cli.exercism.io/install) which is the same thing as above, except automated.
1. You can use one of the community-supported package managers.

## Manual Installation

**TODO: add detailed instructions here**

## Installation Script

On Linux you can download the [install script](http://cli.exercism.io/install), and run it locally.

```bash
curl -O http://cli.exercism.io/install
chmod +x install
```

```bash
wget http://cli.exercism.io/install
chmod +x install
```

Read it before you run it, people.

By default, the installer will try to put it in `/usr/local/bin/` or `$HOME/bin/`.

If you'd like it to live somewhere else, you can specify it up front:

```bash
DIR=/path/to/bin ./install
```

## Package Managers

There's a [freshports build](http://www.freshports.org/misc/exercism), and an [AUR package](https://aur.archlinux.org/packages/exercism-cli). These sometimes lag behind the latest release.

<a class="secondary-button" href="fetching-exercises.html">Fetching Exercises</a>
