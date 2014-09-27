---
title: "Perl 5"
slug: "getting-started-with-perl5"
category: "languages"
ordinal: 1600
---

## Installation

On MS Windows use [Strawberry Perl](http://strawberryperl.com/) or [DWIM Perl](http://dwimperl.com/).

On Linux, perl comes built in. Please make sure you have at least perl 5.10 using `perl -v` If not, install perl 5.18.x using [Perl brew](http://perlbrew.pl/).

On Mac OSX install Xcode

## Creating Your First Perl5 Module

In order to have your solution work correctly with the test specification,
you'll need to create a Perl module. To get started, create a file in the
perl5 directory called "bob.pm", with the following contents:

```bash
package Bob;

use strict;
use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);

$VERSION     = 1.00;
@ISA         = qw(Exporter);
@EXPORT      = ();
@EXPORT_OK   = qw(hey);
%EXPORT_TAGS = ( DEFAULT => [qw(&hey)],
                );

sub hey {
	#
	# Your Perl solution goes here
	#
}

1;
````

## Running tests

Execute tests with:

```bash
$ prove bob_test.t
```

## Recommended Learning Resources

Exercism provides exercises and feedback but can be difficult to jump into for those learning Perl for the first time. Check out [learn.perl.org](http://learn.perl.org/) for instructions and information on getting started with Perl 5.

