---
title: "R"
slug: "getting-started-with-r"
category: "languages"
ordinal: 1700
---

## Installing R

If R isn't already available on your system download and install the latest binary for your platform from [the R project website](http://cran.r-project.org/).

## Packages

The [R Package Index](http://cran.r-project.org/web/packages/) contains thousands of packages.
Pretty much each of them is installable by running `library("packagename")` from within your R code.

## Downloading the Test Runner

### Linux/Mac users

Download the `run_tests` R script, save it to `/usr/local/bin`, and make it executable:

```bash
$ curl https://raw.githubusercontent.com/morphatic/xr/master/bin/run_tests.R -o /usr/local/bin/run_tests
$ chmod +x /usr/local/bin/run_tests
```

### Windows users

1. Download [run_tests.R](https://raw.githubusercontent.com/morphatic/xr/master/bin/run_tests.R) and [run_tests.bat](https://raw.githubusercontent.com/morphatic/xr/master/bin/run_tests.bat)
1. Save them to `C:\Program Files\R\R-X.X.X\bin` where `X.X.X` refers the version of R you have
1. Make sure that `C:\Program Files\R\R-X.X.X\bin` has been added to your `PATH` variable. (If you don't know what [a `PATH` variable](http://en.wikipedia.org/wiki/PATH_%28variable%29) is, here's [an easy-to-use `PATH` editor](https://patheditor2.codeplex.com/). You can add the R directory in either the User or System `PATH`.)

## Running Tests for an Exercise

Execute tests for an exercise with, e.g.:

```bash
$ cd exercism/r/hello-world
$ run_tests
```

## Recommended learning resources

* [Reasons to Learn R](http://www.youtube.com/watch?v=W2GZFeYGU3s)
* [R Tutorial on YouTube](https://www.youtube.com/playlist?list=PL69A9CCD816A5F3A5)
* [Working with Scripts in R](https://www.youtube.com/watch?v=qqz_D1vzS5M)
* [The R Language Reference](http://cran.r-project.org/doc/manuals/r-release/R-lang.html)
