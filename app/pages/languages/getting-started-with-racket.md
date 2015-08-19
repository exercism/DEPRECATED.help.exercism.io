---
title: "Racket"
slug: "getting-started-with-racket"
category: "languages"
ordinal: 1750
---

## Installing Racket

Please reference Racket's [Getting Started](http://docs.racket-lang.org/getting-started/) page for instructions on downloading and installing Racket.

For *nix variants, you can also install Racket using your OS' package manager:

**OS X**

Install via Homebrew:

```bash
brew install plt-racket
```

**Linux**

Debian:
```bash
sudo apt-get install racket
```

Arch:
```bash
pacman -S racket
```

### Running Tests

You can run the provided tests through DrRacket, or via the command line.

To run the test through DrRacket, simply open the test file and click the 'Run' button in the upper right.

To run the test from the command line, simply run the test from the exercise directory. For example, if the test suite is called `hello-world-test.rkt`, you can run the following command:

```bash
racket hello-world-test.rkt
```

### Recommended Resources

#### Reading

* [Getting Started](http://docs.racket-lang.org/getting-started/) on the Racket website.
* [How to Design Programs](http://htdp.org/), by Matthias Felleisen, Robert Bruce Findler, Matthew Flatt, and Shiriam Krishnamurthi
* [The Little Schemer](http://mitpress.mit.edu/books/little-schemer), by Daniel P. Friedman and Matthias Felleisen

#### Tooling

Check out [Command Line Tools and Your Editor of Choice](http://docs.racket-lang.org/guide/other-editors.html).

