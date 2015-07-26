---
title: "Scheme"
slug: "getting-started-with-scheme"
category: "languages"
ordinal: 2100
---

Install [Guile Scheme][1], a free, open-source scheme implementation available on a variety of platforms.

**OS X**

Install via Homebrew:

```bash
brew install guile
```

**Linux**

On most Linux distros, Guile is probably already installed as it's the official
GNU extension language. If not, use your distro's package manager to install, e.g.:

Debian:
```bash
sudo apt-get install guile
```

Arch:
```bash
pacman -S guile
```

Ubuntu:

In ubuntu 14.04 the packages for guile are missing modules that prevent the
tests from running.
Guile can be installed from source under your home directory by following the
instructions below.
```
sudo apt-get install libltdl-dev libunistring-dev libgc-dev libmpd-dev libgmp3-dev libffi-dev
cd $HOME/Downloads/
wget ftp://ftp.gnu.org/gnu/guile/guile-2.0.11.tar.gz
tar -zxvf guile-2.0.11.tar.gz
cd guile-2.0.11/
./configure --prefix=$HOME/lib/guile
make
make install
if [ ! -d $HOME/bin ]; then mkdir $HOME/bin; fi
ln -s $HOME/lib/guile/bin/guile $HOME/bin/guile
```
After installation is complete you will need to log out and back into ubuntu
in order for the path to be set on your /home/bin directory.

**Windows**

Guile can theoretically be compiled from source under [Cygwin][2], but as with
many things, it's probably easier just to run a Linux VM.

You shouldn't need any "extra" packages.

### Running tests

Run `guile test-file.scm` from the command line.

### Making your first Scheme solution

To create scheme code that can be loaded with `(use-modules (dna))`,
put this code in `dna.scm`:

```scheme
(define-module (dna)
  #:export (to-rna))

(define to-rna
  (lambda (dna)
  ;; Do something to transcribe dna to rna
  ))
```
### Recommended Resources

#### Reading

* [Structure and Interpretation of Computer Programs][3], by Abelson, Sussman, and Sussman
* [The Little Schemer][4]
* [Learn Scheme in 15 minutes][6] using Guile

#### Tooling

Emacs users will want to check out [Geiser][5], a collection of major and minor modes for interactive Scheme development



[1]: http://www.gnu.org/software/guile/
[2]: https://www.cygwin.com/
[3]: http://mitpress.mit.edu/sicp/
[4]: http://mitpress.mit.edu/books/little-schemer
[5]: http://www.nongnu.org/geiser/
[6]: http://web-artanis.com/scheme.html
