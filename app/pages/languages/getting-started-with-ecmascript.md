---
title: "ECMAScript"
slug: "getting-started-with-ecmascript"
category: "languages"
ordinal: 2300
---

Install [Node.js](http://nodejs.org):

* **Windows and OS X users**: can install it
[via package manager](https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager)
* **Linux users**: [Joyent maintains a document][linstall] that details how to get
Node.js installed for a wide range of distributions and package managers.

[linstall]: https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager

Install globally a tool to run [Gulp](http://gulpjs.com):

```bash
$ npm install -g gulp-cli
```

Depending on your setup, you may need super user privileges to install an NPM
module globally. This is the case if you've used the official installer linked
to above. If NPM gives you an error saying you don't have access, add `sudo` to
the command above:

```bash
$ sudo npm install -g gulp-cli
````

If you've used the official installer, your `PATH` should have been automatically
configured, but if your shell has trouble locating your globally installed
modules&mdash;or if you build Node.js from source&mdash;update your `PATH` to
include the `npm` binaries by adding the following to either `~/.bash_profile` or
`~/.zshrc`:

```bash
$ export PATH=/usr/local/share/npm/bin:$PATH
```

Each assignment needs some tools to run the tests:

* [Traceur](https://github.com/google/traceur-compiler): to transpile ECMAScript
6 code to ECMAScript 5
* [Jasmine](http://jasmine.github.io): to run tests
* [Gulp](http://gulpjs.com): to automate everything, you don't need to worry
about anything

They can be installed running this command within each assignment directory:

```bash
$ npm install
```

## Running Tests

Execute the tests with:

```bash
$ gulp test
```

## Making Your First Node Module

To create a module that can be loaded with `var Bob = require('./bob.js');`, put
this code in `bob.js`:

```javascript
var Bob = function() {};

Bob.prototype.hey = function(what) {
	//
	// Your solution to the exercise goes here
	//
};

module.exports = Bob;
```

You can find more information about modules in the
[node documentation](http://nodejs.org/api/modules.html#modules_module_exports).
To make it easier to get started, there is a *skeleton* ECMAScript file in the
directory for the first exercises.

## Recommended Learning Resources

* [Exploring ES6](https://leanpub.com/exploring-es6/read) book, by Axel Rauschmayer
* [ES6 Katas](http://es6katas.org) website
* [Traceur compiler](https://github.com/google/traceur-compiler)

## Recommended References

* [ECMAScript 2015 Language Specification](http://www.ecma-international.org/publications/files/ECMA-ST/Ecma-262.pdf) (pdf)
* [Mozilla JavaScript Reference](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference)

