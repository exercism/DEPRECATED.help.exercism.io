---
title: "Lisp Flavoured Erlang"
slug: "getting-started-with-lfe"
category: "languages"
ordinal: 1000
---

First, make sure you have Erlang installed, following the instructions on the
[Erlang][1] getting started page as appropriate.
[1]: getting-started-with-erlang.html

### Homebrew for Mac OS X

Update your Homebrew to latest:

```bash
$ brew update
```

Install LFE:

```bash
$ brew install lfe
```

### Installing from Source
With your system's "developer tools" or "essential build packages", `git`
and Erlang's `erl` installed, you can download and build LFE with the following:

```bash
$ git clone https://github.com/rvirding/lfe
$ cd lfe
$ make
$ make install
```

Once you have LFE compiled, you can start up the REPL (interactive session)
by executing the ``lfe`` binary:

```bash
./bin/lfe
```


## Running Tests

Setup needed (only needs to be done once):

```bash
$ rebar get-deps
$ rebar compile
$ export ERL_LIBS=$(find deps -maxdepth 1 -mindepth 1 | tr '\n' ':')
```

If you're not using Bash, change the last command to what is needed to set an
environment variable in your shell, e.g. for [fish][2]:

```fish
$ set -xU ERL_LIBS (find deps -maxdepth 1 -mindepth 1 | tr '\n' ':')
```

[2]: http://fishshell.com

For each example, the following general steps are required:

```bash
$ lfec -o <problem> <problem>/*.lfe
$ lfe -pa <problem> -noshell -eval \
  "(eunit:test '<module>-tests '(verbose))" \
  -s init stop
```

Here's a specific example, using the "bob" problem:

```bash
$ lfec -o bob bob/*.lfe
$ lfe -pa bob -noshell -eval \
  "(eunit:test 'bob-tests '(verbose))" \
  -s init stop
```


## Recommended Learning Resources

Exercism provides exercises and feedback but can be difficult to jump into for
those learning LFE for the first time. These resources can help you get started:

* [LFE Quick Start](http://lfe.gitbooks.io/quick-start/)
* [LFE Tutorial](http://lfe.gitbooks.io/tutorial/)
* [LFE Documentation](http://docs.lfe.io/)
* [Casting SPELs in Lisp](http://lfe.gitbooks.io/casting-spels/) (LFE Edition)
* [LFE Presentations](http://docs.lfe.io/presentations.html)

See also: [Erlang recommended learning resources][3]

[3]: getting-started-with-erlang.html#recommended-learning-resources
