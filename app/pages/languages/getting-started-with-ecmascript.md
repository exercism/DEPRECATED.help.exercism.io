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
2015 code to ECMAScript 5
* [Jasmine](http://jasmine.github.io): to run tests
* [Gulp](http://gulpjs.com): to automate everything, you don't need to worry
about anything
* [ESLint](http://eslint.org/) (optional): to perform several static analysis and
coding style checks to your ECMAScript code.

They can be installed running this command within each assignment directory:

```bash
$ npm install
```

## Running Tests

Execute the tests with:

```bash
$ gulp test
```

Be sure your code follows best practices and coding styles, as other users do, with
ESLint, a tool to perform static analysis to your code. Sometimes, tools like this
save you some time detecting typos or silly mistakes in your ECMAScript code:

```bash
$ gulp lint
```

Or both at the same time:

```bash
$ gulp lint test
```

## Making Your First ECMAScript 2015 Module

Usually, tests on this track will load your implementation importing it as a
ECMAScript 2015 module: `import Bob from './bob.js';`. To make it work, you just
needs to export your implementation from the file the tests are looking for
your module, `bob.js`:

```javascript
export default class Bob {
  hey(message) {
	//
	// Your solution to the exercise goes here
	//
  }
}
```

You can find more information about modules in the
[Traceur documentation](https://github.com/google/traceur-compiler/wiki/LanguageFeatures#modules).
To make it easier to get started, there is a *skeleton* ECMAScript file in the
directory for the first exercise.

## Recommended Learning Resources

* [Exploring ES6](https://leanpub.com/exploring-es6) book, by Axel Rauschmayer
* [ES6 Katas](http://es6katas.org) website
* [Traceur compiler](https://github.com/google/traceur-compiler)

## Recommended References

* [ECMAScript 2015 Language Specification](http://www.ecma-international.org/publications/files/ECMA-ST/Ecma-262.pdf) (pdf)
* [Mozilla JavaScript Reference](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference)

