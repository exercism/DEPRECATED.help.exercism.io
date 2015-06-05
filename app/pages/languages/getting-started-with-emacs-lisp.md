---
title: "Emacs Lisp"
slug: "getting-started-with-emacs-lisp"
category: "languages"
ordinal: 520
---

## Installing Emacs

Since Emacs Lisp (elisp) is the extension language for Emacs, you'll need to
install [GNU Emacs][emacs] first.

It is recommended to get the latest Emacs, currently 24.5-1, but 24.4 or higher
should be considered the target implementation for the exercises.

### On OS X

The easiest way is to visit [Emacs For Mac OS X][emacs-osx]
and download the dmg, which will install GNU Emacs as a packaged OS X app.

Alternatives exist, such as Aquamacs (not recommended) or installing via
Homebrew, if you prefer.

### On Linux

On some distros, Emacs is already installed, since it's part of GNU.

#### Ubuntu

Prior to Ubuntu 15.04 "vivid vervet", the highest available Emacs version was
24.3, so you'll need to use a [PPA][ppa] or [build from source][source] if
you're on 14.10 or earlier.

Otherwise, if you're running vivid, it should be as simple as

`sudo apt-get install emacs`

#### Arch

Arch currently ships with the latest Emacs 24.5-1, so run:

`sudo pacman -S emacs`

and you should be set.

#### Other distros

Check with your distro to see what version is current, and use your package
manager or build from source as appropriate.

### Windows

So you've decided to install Emacs on Windows.

![dangerous](http://www.zeldauniverse.net/wp-content/uploads/2012/01/83-Image-2.jpg)

I've never done it, but the prevailing wisdom is that you just need to visit
the [FTP archive][winftp], grab the correct binary (`emacs-24.x-bin-xxx.zip`),
unzip it and launch. YMMV, please let us know in the issues or
[on Gitter][support] if this section needs some love.

## So you've installed Emacs. Now what?

Well, you can start the tutoral by pressing `C-h t`, and that's not a bad
place to start. If you're completely new to Emacs, the [Emacs Prelude][prelude]
package offers a nice set of sensible defaults and packages.

A guide I wrote a while ago  for getting started with the editor
(including Prelude) can be found [here][dark-side].

### Running tests

Elisp tests are run using [ERT][ert], an Emacs Lisp library for
regression/unit testing. Tests can be run several ways:

1. Interactively, with `M-x ert RET test-name`
2. From the terminal, in batch mode, with
`emacs -batch -l ert -l my-test.el -f ert-run-tests-batch-and-exit`
3. Other options can be found in the docs, `C-h i m ert RET`

### Working on exercises

Since Emacs is, itself, an elisp interpreter, your working code is always in
its native execution environment. You an evaluate any form by pressing `C-x e`
at the end of the form, or a selection with `M-x eval-region` or the whole
buffer with `M-x eval-buffer`. This can be extremely useful for quickly
debugging your code.

### Suggestions

Since both your code and tests are valid elisp, it is suggested to work with
your exercise code in a buffer pane side-by side with its test, like so:

![Dual Pane](/img/setup/emacs/dual-pane.png)

Split the frame vertically with `C-x 3`, and open the file with
`C-x C-f /path/to/file`.

### Getting help

1. [The Emacs Wiki][wiki] is invaluable. Spend lots of time here.
2. [The Emacs Editor][man] is the official manual for GNU Emacs.
3. IRC - there are [freenode][freenode] channels for #emacs, #prelude, and many
Emacs packages, and many helpful folks around. And with emacs, IRC is as close
as `M-x erc`.
4. [Exercism Support][support] Gitter chat is also a good place to get help from
the exercism community.

## Have fun.

But be careful. Once you grok Emacs, you may never be able to use another editor
again.





[emacs]: http://www.gnu.org/software/emacs/
[emacs-osx]: http://emacsformacosx.com/
[ppa]: https://launchpad.net/ubuntu/+ppas?name_filter=emacs
[source]: http://linuxg.net/how-to-install-emacs-24-4-on-ubuntu-14-10-ubuntu-14-04-and-derivative-systems/
[winftp]: http://ftp.wayne.edu/gnu/emacs/windows/
[support]: https://gitter.im/exercism/support
[prelude]: http://batsov.com/prelude/
[dark-side]: http://decomplecting.org/blog/2014/10/23/welcome-to-the-dark-side-switching-to-emacs/
[ert]: http://www.emacswiki.org/emacs/ErtTestLibrary
[wiki]: http://emacswiki.org/
[man]:http://www.gnu.org/software/emacs/manual/html_node/emacs/index.html
[freenode]: https://freenode.net/
