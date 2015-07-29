---
title: "Installing the CLI on Mac OS X"
slug: "installing-the-cli-on-mac"
category: "process"
ordinal: 3
---

The easiest way to install the CLI on the mac is to [use homebrew](http://brew.sh/).

Once homebrew is installed, run the following two commands:

```bash
brew install exercism
```

The homebrew version of exercism will often lag a bit behind for a few days
after a new release has been made, since it requires a pull request to be
accepted into the homebrew project before it's available.

## Alternate Installation Methods

The second-easiest method is to go grab the [latest
release](http://github.com/exercism/cli/releases/latest) for your operating
system and architecture (32-bit or 64-bit), unzip it, and place the binary [in
your PATH](/understanding-path.html).

If the above made you think _I understood all of the words, but I have no idea
what the sentence means_, don't worry! There's a step-by-step explanation
below.


### Manual Installation

This is described in detail in [this video tutorial](https://www.youtube.com/watch?v=TCT4eHGwfaE).

First you need to know which processor architecture your computer has. If
you're not sure, you can use Terminal.app to find out:

Open Terminal.app and type in the following command:

```bash
uname -m
```

Common values are `i386` (32-bit) and `x86_64` (64-bit). If you have something
different, you'll need to ask Google about the details.

If you don't have a directory in your home directory called `bin`, make one now:

```bash
mkdir ~/bin
```

Next, [get the latest
release](https://github.com/exercism/cli/releases/latest) from GitHub, making
sure to get the one that is both for Mac and for your architecture:

Unzip the downloaded archive:

```bash
cd ~/Downloads
tar -xzvf exercism-mac-64bit.tgz
```

Move the exercism binary to the bin directory:

```bash
mv exercism ~/bin/
```

Check if `~/bin` is on your path:

```bash
echo $PATH
```

Look for a section between two colons that looks like
`/Users/<your-username>/bin` or `~/bin`.


If it's not there, you need to add it. In order to do so, you'll need to
know which shell you use, so that you can add it to the correct config.

Find out, by running:

```bash
echo $SHELL
```

If it says `/bin/bash`, then you're using the default that ships with the Mac.
If not, you'll need to replace `.bash_profile` with the name of the correct
config file.

```bash
echo 'export PATH=~/bin:$PATH' >> ~/.bash_profile
```

Finally, source your shell config:

```bash
source ~/.bash_profile
```

You should now have access to the exercism command:

```bash
exercism --version
```

If it gives you a version number, you're good to go. If not, then jump in the
[support chat](https://gitter.im/exercism/support) or open a [GitHub
issue](https://github.com/exercism/exercism.io/issues/new)
and we'll help you get it straightened out.

## Installation Script

Open up Terminal.app. You should be able to find this using the Spotlight search, or by going to _Applications > Utilities > Terminal_.

### Option 1: curl

First, find out if you have `curl` installed:

```bash
curl -V
```

If you have `curl` it will give output a version number and some other stuff (if not, it will probably say "command not found").

To download the script using `curl`, run the following command:

```bash
curl -O https://raw.githubusercontent.com/exercism/cli-www/master/public/install
```

### Option 2: wget

If you don't have `curl`, then check if you have `wget`:

```bash
wget -V
```

Again, a version and some other stuff means that you have it, and "command not found" means that you don't.

If you have it, download the script with the following command:

```bash
wget https://raw.githubusercontent.com/exercism/cli-www/master/public/install
```

In general, you don't ever want to run a script that someone else wrote without reading it yourself. Bad things can happen. In this case, the script is innocuous, but don't take my word for it. Open up the script and read it yourself. You can do this using your favorite text editor, or with the `open` command, which will default to TextEdit:

```bash
open install
```

## Running the Install Script

Now you'll need to make the script executable. Run the following command:

```bash
chmod +x install
```

**NOTE**: If you want to learn more about PATH, and what _making a file executable_ actually means, check out [Jumpstart Lab's CLI tutorial](http://tutorials.jumpstartlab.com/topics/cli.html).

Now, finally, run the script.

```bash
./install
```

By default, the installer will try to put it in `/usr/local/bin/` or `$HOME/bin/`.

If you'd like it to live somewhere else, you can specify it up front:

```bash
DIR=/path/to/bin ./install
```

If everything worked, you should be able to run exercism:

```bash
exercism -v
```

To see all the commands available to you, run `exercism` without any options:

```bash
exercism
```


<a class="secondary-button" href="fetching-exercises.html">Fetching Exercises</a>
