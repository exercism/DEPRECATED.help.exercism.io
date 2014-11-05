---
title: "JavaScript"
slug: "getting-started-with-javascript"
category: "languages"
ordinal: 1000
---

**Windows and OS X users**: Install [Node.js](http://nodejs.org/) [via package manager](https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager). Windows users can use Visual Studio, see below.

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

## Visual Studio on Windows

Install [Visual Studio Express 2013 for web](http://www.visualstudio.com/en-us/products/visual-studio-express-vs.aspx). This will include the IDE and web development tools.

To get started, you can download a Visual Studio solution that is already set up to work with JavaScript and the other languages that Visual Studio supports.

![Solution Explorer](/img/setup/visualstudio/SolutionExplorer.png)

1. Download the [Exercism.io Visual Studio Template](https://github.com/rprouse/Exercism.VisualStudio) from GitHub by clicking the Download Zip button on the page.
2. Unzip the template into your exercises directory, for example `C:\src\exercises`
2. Install the [Exercism CLI](http://help.exercism.io/installing-the-cli.html)
3. Open a command prompt to your exercise directory 
4. Add your API key to exercism `exercism configure --key=YOUR_API_KEY`
5. Configure your source directory in exercism `exercism configure --dir=C:\src\exercises`
6. [Fetch your first exercise](http://help.exercism.io/fetching-exercises.html) `exercism fetch javascript`
7. Open the Exercism solution in Visual Studio
8. Expand the Exercism.javascript project
9. Click on **Show All Files** in Solution Explorer (See below)
10. The exercise you just fetched will appear greyed out. Right click on the folder and **Include In Project**
11. Get coding...

![Add files](/img/setup/visualstudio/AddFiles.png)

If you have a paid version of Visual Studio, you should install the [Web Essentials](http://vswebessentials.com/) extension. It will make working with Javascript much easier.

You can run the unit tests from a node.js command line using the batch file in the project.

```
C:\Src\exercises\javascript>test example\bob_test.spec.js
.................

Finished in 0.02 seconds
17 tests, 17 assertions, 0 failures, 0 skipped
```

If you do not see any output from running the tests, you are likely not in a Node.js command prompt.

## Recommended Learning Resources

* [Eloquent JavaScript: A Modern Introduction to Programming (2nd Ed.)](http://eloquentjavascript.net)
* [JavaScript: The Good Parts](http://www.amazon.com/JavaScript-Good-Parts-Douglas-Crockford/dp/0596517742)
* [Crockford on JavaScript](http://yuiblog.com/crockford/)
* [idiomatic.js: Principles of Writing Consistent, Idiomatic JavaScript](https://github.com/rwaldron/idiomatic.js)

## Recommended References

* [Mozilla JavaScript Reference](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference)


