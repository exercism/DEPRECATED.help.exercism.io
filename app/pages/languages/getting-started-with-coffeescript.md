---
title: "CoffeeScript"
slug: "getting-started-with-coffeescript"
category: "languages"
ordinal: 330
---

**Windows and OS X users**: Install [Node.js](http://nodejs.org/) [via package manager](https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager).

**Linux users**: [Joyent maintains a document][linstall] that details how to get Node.js installed for a wide range of distributions and package managers.

[linstall]: https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager

Install `jasmine-node` and `coffee`:

```bash
$ npm install jasmine-node coffee -g
```

Depending on your setup, you may need super user privileges to install an `npm` module globally. This is the case if you've used the official installer linked to above. If NPM gives you an error saying you don't have access, add `sudo` to the command above:

```bash
$ sudo npm install jasmine-node coffee -g
```

If you've used the official installer, your `PATH` should have been automatically configured, but if your shell has trouble locating your globally installed modules—or if you build Node.js from source—update your `PATH` to include the `npm` binaries by adding the following to either `~/.bash_profile` or `~/.zshrc`:

```bash
$ export PATH=/usr/local/share/npm/bin:$PATH
```

## Running Tests

Execute the tests with:

```bash
$ jasmine-node --coffee bob_test.spec.coffee
```

## Making Your First Node Module

To create a module that can be loaded with `Bob = require './bob'`, put this code in `bob.coffee`:

```coffeescript
class Bob

module.exports = Bob
```

You can find more information about modules in the [Node documentation](http://nodejs.org/api/modules.html#modules_module_exports).

## Recommended Learning Resources

If you want to learn the basics about CoffeeScript you may want to try these resources:

* [Code School course on CoffeeScript](https://www.codeschool.com/courses/coffeescript)
* [CoffeeScript Website](http://coffeescript.org)
* [StackOverflow](http://stackoverflow.com/)
