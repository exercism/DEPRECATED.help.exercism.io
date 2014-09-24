---
title: "Fetching Exercises"
slug: "fetching-exercises"
category: "process"
ordinal: 2
---

First configure the command-line client:

```bash
$ exercism configure --key=YOUR_API_KEY --dir=/path/to/exercises
```

Your API key can be found in your account settings.

The `dir` is optional. If you leave it off, an exercism directory will be created for you in your home directory the first time you fetch problems from the site.

To fetch your current exercises, issue the command:

```bash
$ exercism fetch [language]
```

Or you can fetch all languages:

```bash
$ exercism fetch
```

The program will download the exercises to the configured project directory.

Note that the code will be put in that directory even if you are somewhere else on the filesystem when calling `exercism fetch`.

To start working on an exercise, go find the downloaded files.

```bash
$ cd path/to/exercism/project # or whatever
```

You can work on them using your usual editor, tools, and environment. Read the <a class="link-side-menu" href="#sidr">getting started guide</a> of your language to find out how to run the tests.

As soon as you have submitted code to an exercise, `exercism fetch` will provide you with access to the next exercise.

<a class="secondary-button" href="submitting-exercises.html">Submitting Exercises</a>
