---
title: "Python"
slug: "getting-started-with-python"
category: "languages"
ordinal: 1610
---

If Python isn't already available on your system follow the instructions at [the Hitchhiker's Guide to Python](http://docs.python-guide.org/en/latest/#getting-started) to install Python on your computer.

Exercism currently supports Python3.4, Python3.3 and Python2.7.

## Running Tests

Execute tests with:

```bash
$ cd exercism/project/directory/bob
$ python bob_test.py
```

## Packages

The [Python Package Index](https://pypi.python.org/pypi) contains thousands of packages.
Pretty much each of them is installable with `pip install packagename`.
If you don't have __pip__ already, [get it now](https://pip.pypa.io/en/latest/installing.html)!

## Code Style and Linting

There's a style guide called [PEP8](http://legacy.python.org/dev/peps/pep-0008/) that many Python projects adhere to.
Read it when you get a chance!

If you just want a quick overview of some problems in your code, use [pylint](http://www.pylint.org/)!
It can be pretty picky though, so take its results with a grain of salt.
If you don't agree with one of its points, that's a good topic for a discussion in the comments for your program!

If you'd rather have a tool take care of your style issues, take a look at [autopep8](https://github.com/hhatto/autopep8)!
Run `autopep8 -d mycode.py` to get a diff of the changes it proposes and `autopep8 -i mycode.py` to format the code inplace!

## Recommended learning ressources

* [The Python Tutorial](https://docs.python.org/3/tutorial/)
* [Learn Python The Hard Way](http://learnpythonthehardway.org/book/)
* [Think Python](http://www.greenteapress.com/thinkpython/html/index.html)
* [The Python Library Reference](https://docs.python.org/3/library/index.html)
