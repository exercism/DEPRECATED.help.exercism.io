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
$ ./bin/lfe
```


## Running Tests

Setup needed (only needs to be done once):

```bash
$ cd /path/to/exercism/lfe
$ rebar get-deps compile
$ export ERL_LIBS=$(find deps -maxdepth 1 -mindepth 1 | tr '\n' ':')
```

If you're not using Bash, change the last command to what is needed to set an
environment variable in your shell, e.g. for [fish][2]:

```fish
$ set -xU ERL_LIBS (find deps -maxdepth 1 -mindepth 1 | tr '\n' ':')
```

[2]: http://fishshell.com

For each example, the following general steps are required.

First, compile the module and its tests.

```bash
$ cd /path/to/exercism/lfe/<exercise>
```

```bash
$ mkdir -p ebin
$ lfec -o ebin src/<module>.lfe test/<module>-tests.lfe
```

or

```bash
$ cd bob
$ make compile
```

Then run the tests.

```bash
$ lfe -pa ebin -noshell -eval \
  "(eunit:test '<module>-tests '(verbose))" \
  -s init stop
```

or

```bash
$ make test
```

NB The `test` make target depends on `compile`, so to compile
and test, `make test` is all that's required.


Here's a specific example, using the "bob" exercise:

```bash
$ cd bob
$ mkdir -p ebin
$ lfec -o ebin src/bob.lfe test/bob-tests.lfe
$ lfe -pa ebin -noshell -eval \
  "(eunit:test 'bob-tests '(verbose))" \
  -s init stop
```

Or, using `make`:

```bash
$ make test
```

Although in the wild, LFE dependencies are conventionally project-local,
we've set up symbolic links in each exercise to `../deps`, meaning you only
have to call `rebar get-deps compile` once in the lfe track directory
and the resulting `deps` will be shared across all the exercises.


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
