---
title: "Erlang"
slug: "getting-started-with-erlang"
category: "languages"
ordinal: 550
---

### Homebrew for Mac OS X

Update your Homebrew to latest:

```bash
$ brew update
```

Install Erlang:

```bash
$ brew install erlang
```

### On Linux

Fedora 17+ and Fedora Rawhide: `sudo yum -y install erlang`
Arch Linux : Erlang is available on AUR via `yaourt -S erlang`

### Installing from Source

Get [Erlang OTP 17.1](http://www.erlang.org/download.html)

## Running tests

```bash
$ erlc bob*.erl
$ erl -noshell -eval "eunit:test(bob_test, [verbose])" -s init stop
```

## Recommended Learning Resources

Exercism provides exercises and feedback but can be difficult to jump into for those learning Erlang for the first time. These resources can help you get started:

* [Erlang Documentation](http://www.erlang.org/doc.html)
* [Learn You Some Erlang for Great Good](http://learnyousomeerlang.com)
* [StackOverflow](http://stackoverflow.com/)
