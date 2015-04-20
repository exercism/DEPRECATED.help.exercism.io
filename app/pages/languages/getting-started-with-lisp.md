---
title: "Common Lisp"
slug: "getting-started-with-lisp"
category: "languages"
ordinal: 340
---

Install a lisp implementation such as SBCL or CLisp. Both can be installed via Homebrew on Mac OS X.

```bash
brew install sbcl
# or
brew install clisp
```

Then install [QuickLisp](http://www.quicklisp.org/beta/#installation) and download
[http://beta.quicklisp.org/quicklisp.lisp](http://beta.quicklisp.org/quicklisp.lisp).

```bash
curl -O http://beta.quicklisp.org/quicklisp.lisp
```

Load it into your running Lisp implementation, and type:

```lisp
(quicklisp-quickstart:install)
```

To add the startup code to your init file so that the next time you start the lisp interpreter QuickLisp will be loaded, type:

```lisp
(ql:add-to-init-file)
```

Optionally load lisp-unit:

```lisp
(ql:quickload "lisp-unit")
```

This will be done the first time you run any exercises tests. But you can do it now if you want.

## Running tests

Load the test file into your running Lisp implementation, for example,
`(load "point-mutations-test")`. This will run the tests the first
time automatically. After that you can run the test suite in the REPL
with `(lisp-unit:run-tests :all :point-mutations-test)`.

## Making your first Common Lisp solution

To create lisp code that can be loaded with `(load "dna")`
for the first exercise, put this code in `dna.lisp`:

```lisp
(in-package #:cl-user)
(defpackage #:dna
  (:use #:common-lisp)
  (:export #:hamming-distance))

(in-package #:dna)

(defun hamming-distance (dna1 dna2)
  "Determine number of mutations between DNA strands by computing the Hamming Distance."
  )
```

## Recommended Learning Resources

Exercism provides exercises and feedback but can be difficult to jump
into for those learning Common Lisp for the first time. These
resources can help you get started:

* [Cliki.net Getting Start Started Page](http://cliki.net/Getting%20Started), by various contributors
* [Wikibooks book of Common Lisp, First steps](http://en.wikibooks.org/wiki/Common_Lisp/First_steps), by various contributors
* [Learn X in Y minutes: where X = Common Lisp](http://learnxinyminutes.com/docs/common-lisp/) by Paul Nathan
* [Northwestern University EECS 325 Readings](http://www.cs.northwestern.edu/academics/courses/325/readings/readings.php), by Chris Riesbeck
* [The Common Lisp Cookbook](http://cl-cookbook.sourceforge.net/), by various contributors

There are many more excellent resources, most of them crosslinked in
one of the pages above.

### Important resources

* [The Common Lisp HyperSpec](http://www.lispworks.com/documentation/common-lisp.html), by X3J13 committee. The Common Lisp Standard
* [Common Lisp the Language, 2nd Edition](http://www.cs.cmu.edu/Groups/AI/html/cltl/cltl2.html), by Guy Steele
* [Common Lisp Document Repository](http://cdr.eurolisp.org/) a collection of emergent and de-facto standards
* [Common-Lisp.net](http://common-lisp.net/), project hosting and gateway
* [The Common Lisp Wiki](http://www.cliki.net/)

### Free books

There are many other great books you can find links to. These are the
most popularly linked introductory works.

* [Practical Common Lisp](http://www.gigamonkeys.com/book/), by Peter Seibel
* [Common Lisp: A Gentle Introduction to Symbolic Computation](http://www-cgi.cs.cmu.edu/afs/cs.cmu.edu/user/dst/www/LispBook/index.html) (PDF), by David S. Touretzky
* [Common Lisp: An Interactive Approach](http://www.cse.buffalo.edu/~shapiro/Commonlisp/) (PDF), by Stuart C. Shapiro
* [Successful Lisp: How to Understand and Use Common Lisp](http://psg.com/~dlamkins/sl/cover.html), by David B. Lamkins

Following these are two more advanced books, but beginners shouldn't
be afraid of them, they're quite accessible and "classics".

* [On Lisp](http://www.paulgraham.com/onlisptext.html), by Paul Graham
* [Structure and Interpretation of Computer Programs](http://mitpress.mit.edu/sicp/), by Abelson, Sussman, and Sussman

The last is actually on a related Lisp dialect, Scheme, but it's very
helpful book, generally. If you find you prefer Scheme, it's an
excellent start.
