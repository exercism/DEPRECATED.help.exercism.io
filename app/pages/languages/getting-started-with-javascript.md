---
title: "JavaScript"
slug: "getting-started-with-javascript"
category: "languages"
ordinal: 1000
---

**Windows and OS X users**: Install [Node.js](http://nodejs.org/) [via package manager](https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager).

**Linux users**: [Joyent maintains a document][linstall] that details how to get Node.js installed for a wide range of distributions and package managers.

[linstall]: https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager

Install `jasmine-node`:

```bash
$ npm install jasmine-node -g
```

Depending on your setup, you may need super user privileges to install an NPM module globally. This is the case if you've used the official installer linked to above. If NPM gives you an error saying you don't have access, add `sudo` to the command above:

```bash
$ sudo npm install jasmine-node -g
````

If you've used the official installer, your `PATH` should have been automatically configured, but if your shell has trouble locating your globally installed modules&mdash;or if you build Node.js from source&mdash;update your `PATH` to include the `npm` binaries by adding the following to either `~/.bash_profile` or `~/.zshrc`:

```bash
$ export PATH=/usr/local/share/npm/bin:$PATH
```

## Running Tests

Execute the tests with:

```bash
$ jasmine-node bob_test.spec.js
```

## Making Your First Node Module

To create a module that can be loaded with `var Bob = require('./bob.js');`, put this code in `bob.js`:

```javascript
var Bob = function() {};

Bob.prototype.hey = function(what) {
	//
	// Your solution to the exercise goes here
	//
};

module.exports = Bob;
```

You can find more information about modules in the [node documentation](http://nodejs.org/api/modules.html#modules_module_exports). To make it easier to get started, there's a "skeleton" bob.js file in the directory
for the first exercise.

## Recommended Learning Resources

* [Eloquent JavaScript: A Modern Introduction to Programming (2nd Ed.)](http://eloquentjavascript.net)
* [JavaScript: The Good Parts](http://www.amazon.com/JavaScript-Good-Parts-Douglas-Crockford/dp/0596517742)
* [Crockford on JavaScript](http://yuiblog.com/crockford/)
* [idiomatic.js: Principles of Writing Consistent, Idiomatic JavaScript](https://github.com/rwaldron/idiomatic.js)

## Recommended References

* [Mozilla JavaScript Reference](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference)

